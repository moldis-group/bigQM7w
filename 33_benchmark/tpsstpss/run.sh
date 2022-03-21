#!/bin/bash             
#PBS -V                 
#PBS -N 000033.com              
#PBS -q workqa           
#PBS -l nodes=1:ncpus=8
export OMP_NUM_THREADS=1                                                                   
ulimit -s unlimited                                                                        
export PATH=/usr/bin                                                                                
export PATH=$PATH:/usr/local/Modules/bin                                                            
export PATH=$PATH:/usr/local/bin                                                                    
export PATH=$PATH:/usr/local/lib                                                                    
export PATH=$PATH:/usr/local/sbin                                                                   
export PATH=$PATH:/usr/sbin                                                                         
export PATH=$PATH:/usr/lib                                                                          
export PATH=$PATH:/home/Lib/intel2021/oneapi/mpi/2021.4.0/include                                   
export PATH=$PATH:/home/Lib/intel2021/oneapi/mkl/2021.4.0/lib/intel64                               
export PATH=$PATH:/home/Lib/intel2021/oneapi/compiler/2021.4.0/linux/compiler/lib/intel64_lin       
export PATH=$PATH:/home/Lib/intel2021/oneapi/compiler/2021.4.0/linux/compiler/lib/intel64_lin/lib   
export LD_LIBRARY_PATH=$PATH 
g16root=/home/sabyasachi
export g16root
. /home/sabyasachi/g16/bsd/g16.profile
WORKDIR=/scratch/sabyasachi/PBS_$PBS_JOBID
mkdir $WORKDIR                    
cd $WORKDIR                       
GAUSS_SCRDIR=$WORKDIR                       
mydir=/home/sabyasachi/bigQM7w/33_benchmark/tpsstpss                         
cp  $mydir/000033.com .                  
echo $HOSTNAME  > scrpath.txt                                                    
echo $PWD      >> scrpath.txt                                                    
cp scrpath.txt $mydir/                                                                  
g16 000033.com 
cp *.log $mydir/                                                                  
rm -rf $WORKDIR                                                                  
