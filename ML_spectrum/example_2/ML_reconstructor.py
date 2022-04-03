import sys
import os
import qml
import numpy as np
from scipy import interpolate
import matplotlib.pyplot as plt

print('+===============================================================+')
print('|          FCHL-ML Prediction of Electronic Spectrum            |')
print('|                                                               |')
print('| How to use this program?                                      |')
print('| =========================                                     |')
print('| INPUT:                                                        |')
print('| ------                                                        |')
print('| 1. The folder "trainingset_data" contains pre-trained ML data |')
print('|    and geometries of 12880 bigQM7w molecules at the UFF level.|')
print('|    Note that the ML model is trained on time-dependent        |')
print('|    wB97XD/def2SVPD-level using minimum energy geometries at   |')
print('|    wB97XD/def2SVP-level. For predictions, the ML model uses   |')
print('|    the UFF geometries.                                        |')
print('|                                                               |')
print('|    Please do not modify the content of "trainingset_data"     |')
print('|                                                               |')
print('| 2. The coordinates of the query molecule must be at the UFF   |')
print('|    level, and collected in "query.xyz"                        |')
print('|                                                               |')
print('| EXECUTION:                                                    |')
print('| ----------                                                    |')
print('| python3.6 ML_reconstructor.py N_train                         |')
print('| where N_train is any of 100, 300, 500, 1000, 3000, or 5000    |')
print('|                                                               |')
print('| OUTPUT:                                                       |')
print('| -------                                                       |')
print('| "query_spec.dat" contains the electronic spectrum for         |')
print('| "query.xyz". The predicted spectrum is plotted in             |')
print('| "query_spec_reconstructed.pdf"                                |') 
print('|                                                               |')
print('| This program is provided as a part of the bigQM7w study       |')
print('| DOI:                                                          |')
print('| ----                                                          |')
print('| https://doi.org/10.48550/arXiv.2110.11798                     |')
print('|                                                               |')
print('| See also:                                                     |')
print('| ---------                                                     |')
print('| https://moldis-group.github.io/bigQM7w/                       |')
print('| https://moldis.tifrh.res.in/db/dbbigqm7wdef2svp               |')
print('|                                                               |')
print('| 02 April 2022:                                                |')
print('| --------------                                                |')
print('| Contact: ramakrishnan@tifrh.res.in, raghu.rama.chem@gmail.com |')
print('+===============================================================+')

N_train = input('Enter training set size (100, 300, 500, 1000, 3000, or 5000): ')
N_train = int(N_train)

Allowed=[100,300,500,1000,3000,5000]

if N_train not in Allowed:
    print('\n'+'<< Ah ah ah ...'+' only training set sizes allowed are 100, 300, 500, 1000, 3000, and 5000'+' >>\n')
    sys.exit('You are terminated'+'\n')

N_bin=128
dlambda=120.0/128.0

print('Reading shuffled indices'+'\n')
indexfile=open('../trainingset_data/shuffle_index.dat')
indices=[]
for line in indexfile:
   string=line.split()
   indices.append(string[0])

print('Reading XYZ of training molecules and calculating FCHL descriptors'+'\n')
X_train=[]
for ifile in range(N_train):
    xyz_file='../trainingset_data/geoms_bigqQM7w_UFF/'+indices[ifile]+'.xyz'
    mol=qml.Compound(xyz=xyz_file)
    desc=qml.fchl.generate_representation(mol.coordinates, mol.nuclear_charges, max_size=23, cut_distance=20)
    X_train.append(desc)

print('Reading XYZ of the query molecule and calculating FCHL descriptor'+'\n')
mol=qml.Compound(xyz='query.xyz')
X_query=qml.fchl.generate_representation(mol.coordinates, mol.nuclear_charges, max_size=23, cut_distance=20)

Z=mol.nuclear_charges
Nel=np.sum(Z)
NH=0
for iZ in Z:
    if iZ > 1 and iZ < 6:
       print('<< WARNING: Ah ah ah ...'+' atoms other than CHONF detected in the query molecule'+' >>\n')
    if iZ > 9:
       print('<< WARNING: Ah ah ah ...'+' atoms other than CHONF detected in the query molecule'+' >>\n')
    if iZ == 1:
       NH=NH+1

if len(Z)-NH > 7:
  print('<< WARNING: Ah ah ah ...'+' more than 7 CONF detected in the query molecule'+' >>\n')

X_train=np.array(X_train)
X_query=np.array(X_query)

print('Reading ML coefficients'+'\n')
str_N_train=str('%05d' %N_train)
datafile=open('../trainingset_data/coeffs_'+str_N_train+'.txt','r')
MLcoeff=np.zeros([N_train,N_bin])
iline=0
for line in datafile:
    string=line.split()
    MLcoeff[iline,:]=string
    iline=iline+1

print('Reading spectra of training molecules'+'\n')
datafile=open('../trainingset_data/train_spec_'+str_N_train+'.txt','r')
Spec_train=np.zeros([N_train,N_bin])
iline=0
for line in datafile:
    string=line.split()
    Spec_train[iline,:]=string
    iline=iline+1

print('Calculating FCHL kernel elements between query and training molecules'+'\n')
K=np.zeros(N_train)
similar=[]
for itrain in range(N_train):
    if np.mod(itrain,50) == 0:
       print(itrain, 'elements calculated', N_train-itrain, 'remaining')
    Xt=X_train[itrain]
    Xq=X_query
    Yt=np.zeros([1,23,5,23],dtype=float)
    Yq=np.zeros([1,23,5,23],dtype=float)
    Yt[0]=Xt
    Yq[0]=Xq
    tmp=qml.fchl.get_global_kernels(Yq,Yt,sigmas=[5],cut_distance=20)
    K[itrain]=tmp[0,0,0]
    if K[itrain] > 0.99:
        similar.append(itrain) 

if len(similar) > 0:
    print('\n'+'The query molecule is very similar to the following training molecules')
    for isimilar in similar:
        print(str(isimilar)+',  geoms_bigqQM7w_UFF/'+indices[isimilar]+'.xyz')
else:
    print('\n'+'The query molecule is not similar to any of the training molecules'+'\n')

sp=open('query_spec.dat','w')
sp.write('#Wavelength[nm] Oscillator Strength [atomic units]'+'\n')
x=np.zeros(128)
spec_pred=[]
for i_bin in range(N_bin):
    tmp_pred=np.dot(K,MLcoeff[:,i_bin]) * Nel
    x[i_bin]=i_bin*dlambda+dlambda/2.0
    spec_pred.append(tmp_pred)
    sp.write(str(x[i_bin])+' '+str(spec_pred[i_bin])+'\n')
sp.close
spec_pred=np.array(spec_pred)
    
dx=(119.53125-0.46875)/1000.0
x_grids=np.zeros(1000)
for i in range(0,1000):
    x_grids[i]=0.46875+i*dx+dx/2

f=interpolate.interp1d(x, spec_pred, kind='cubic')
spec_pred_smooth=f(x_grids)
plt.plot(x_grids, spec_pred_smooth, label=r'FCHL-ML-predicted ($N_{train}$='+ str(N_train) +')',color='blue',linewidth=1.0)

plt.stem(x, Spec_train[0,:]*Nel, label=r'TDDFT',linewidth=1.0, linefmt='r-', markerfmt=' ')

plt.legend()

plt.xlabel('Wavelength (nm)', fontsize = 15)
plt.ylabel('Oscillator strength (au)', fontsize = 15)
plt.savefig("query_spec_reconstructed.png",bbox_inches='tight')

print('Predicted spectrum of the query molecule is printed in "query_spec.dat" and plotted in "query_spec_reconstructed.pdf"'+'\n')
print('+========================================================================================================================+')
