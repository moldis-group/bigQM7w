%mem=8gb
%nproc=8
#P TD(Nstates=10000) wB97XD/def2SVP  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
6 0.00000000 0.00000000 0.76174800
6 -0.00000000 -0.00000000 -0.76174800
1 0.00000000 1.02445900 1.16441900
1 0.88720800 -0.51223000 1.16441900
1 -0.88720800 -0.51223000 1.16441900
1 0.88720800 0.51223000 -1.16441900
1 -0.88720800 0.51223000 -1.16441900
1 -0.00000000 -1.02445900 -1.16441900





