#!/bin/bash             
#PBS -V                 
#PBS -N 000024.com              
#PBS -q workqb          
#PBS -l nodes=1:ncpus=8
export OMP_NUM_THREADS=1                                               
export PATH=/apps/openmpi-3.0.0_install/bin:$PATH 
export LD_LIBRARY_PATH=/apps/openmpi-3.0.0_install/lib:$LD_LIBRARY_PATH 
WORKDIR=/scratch/sabyasachi/PBS_$PBS_JOBID
mkdir $WORKDIR                    
cd $WORKDIR                       
mydir=/home/sabyasachi/bigQM7w/33_benchmark/DLPNOSTEOMCCSD_example                         
cp  $mydir/*xyz  .                
cp  $mydir/000024.com .                   
echo $HOSTNAME  > scrpath.txt                
echo $PWD      >> scrpath.txt                
cp scrpath.txt $mydir/                       
/home/Lib/ORCA_500/orca 000024.com > 000024.out
cp *.out $mydir/                             
rm -rf $WORKDIR                              
