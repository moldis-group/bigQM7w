%mem=8gb
%nproc=8
#P TD(Nstates=10000) wB97XD/def2TZVP  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
6 0.00000000 0.00000000 0.76139700
6 -0.00000000 -0.00000000 -0.76139700
1 0.00000000 1.01711000 1.15724800
1 0.88084300 -0.50855500 1.15724800
1 -0.88084300 -0.50855500 1.15724800
1 0.88084300 0.50855500 -1.15724800
1 -0.88084300 0.50855500 -1.15724800
1 -0.00000000 -1.01711000 -1.15724800





