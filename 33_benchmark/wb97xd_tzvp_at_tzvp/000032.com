%mem=8gb
%nproc=8
#P TD(Nstates=10000) wB97XD/def2TZVP  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
6 0.73851900 -0.39488500 0.02373700
6 -0.73851900 -0.39488500 0.02373700
7 0.00000000 0.84954800 -0.17204600
1 1.27687200 -0.74725400 -0.84737300
1 1.24491700 -0.55689200 0.96856600
1 -1.24491700 -0.55689200 0.96856600
1 -1.27687200 -0.74725400 -0.84737300
1 0.00000000 1.40007600 0.67708800





