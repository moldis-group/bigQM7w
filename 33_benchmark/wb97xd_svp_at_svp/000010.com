%mem=8gb
%nproc=8
#P TD(Nstates=10000) wB97XD/def2SVP  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
6 0.00000000 0.00000000 0.66499900
6 0.00000000 0.00000000 -0.66499900
1 0.00000000 0.93110300 1.23904100
1 -0.00000000 -0.93110300 1.23904100
1 0.00000000 0.93110300 -1.23904100
1 -0.00000000 -0.93110300 -1.23904100





