%mem=8gb
%nproc=8
#P TD(Nstates=10000) wB97XD/def2SVP  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
6 0.92666900 -0.72279700 0.00000000
6 -0.00000000 0.46027400 0.00000000
8 -1.19883200 0.39187700 0.00000000
1 1.58204000 -0.67943800 0.88447500
1 1.58204000 -0.67943800 -0.88447500
1 0.35408400 -1.65918200 0.00000000
1 0.51247800 1.45818000 0.00000000





