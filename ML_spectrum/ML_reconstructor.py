#!/usr/bin/env python
# coding: utf-8

# In[3]:


import os
import qml
import numpy as np


# In[4]:


Dir=r"geoms_bigqQM7w_UFF_shuffled/"
Ext=r".xyz"

files=[os.path.join(Dir,_) for _ in os.listdir(Dir) if _.endswith(Ext)]


# In[5]:


N_train = 10 #Allowed values are 10, 100, 300, 500, 1000, 3000, 5000


# In[6]:


X_train=[]
ifile=0
for xyz_file in files:
    if ifile < N_train:
        mol=qml.Compound(xyz=xyz_file)
        mol.generate_fchl_representation()
        desc=mol.representation
        X_train.append(desc)
    ifile=ifile+1

X_train=np.array(X_train)
print(X_train.shape)


# In[7]:


N_bin=128


# In[9]:


datafile=open('trainingset_data/coeffs_00010.txt','r')
MLcoeff=np.zeros([N_train,N_bin])
iline=0
for line in datafile:
    string=line.split()
    MLcoeff[iline,:]=string
    iline=iline+1


# In[10]:


datafile=open('trainingset_data/train_spec_00010.txt','r')
Spec_train=np.zeros([N_train,N_bin])
iline=0
for line in datafile:
    string=line.split()
    Spec_train[iline,:]=string
    iline=iline+1


# In[11]:


sigmas=[5]


# In[12]:


K=np.zeros(N_train)

for itrain in range(N_train):
    Xt=X_train[itrain]
    Xq=X_train[0]
    Yq=np.zeros([1,23,5,23],dtype=float)
    Yt=np.zeros([1,23,5,23],dtype=float)
    Yq[0]=Xq
    Yt[0]=Xt
    tmp=qml.fchl.get_global_kernels(Yq,Yt,sigmas,cut_distance=20)
    K[itrain]=tmp[0,0,0]


# In[ ]:


K


# In[ ]:


spec_pred=np.zeros(N_bin)
for i_bin in range(N_bin):
    spec_pred[i_bin]=np.dot(K,MLcoeff[:,i_bin])


# In[ ]:


print(spec_pred)


# In[ ]:


print(Spec_train[0,:])


# In[ ]:




