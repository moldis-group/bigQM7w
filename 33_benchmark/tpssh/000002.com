%mem=64gb
%nproc=8
#P TD(Nstates=10000) tpssh/Gen  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
7 0.00000200 -0.00000000 0.11046300
1 0.15411100 0.92909200 -0.25775800
1 0.72756300 -0.59801100 -0.25775700
1 -0.88168700 -0.33107800 -0.25772800

H     0
S    3   1.00
     13.0107010              0.19682158D-01
      1.9622572              0.13796524
      0.44453796             0.47831935
S    1   1.00
      0.12194962             1.0000000
P    1   1.00
      0.8000000              1.0000000
P    1   1.00
      0.11704099050          1.0000000
****
N     0
S    5   1.00
   1712.8415853             -0.53934125305D-02
    257.64812677            -0.40221581118D-01
     58.458245853           -0.17931144990
     16.198367905           -0.46376317823
      5.0052600809          -0.44171422662
S    1   1.00
      0.58731856571          1.0000000
S    1   1.00
      0.18764592253          1.0000000
S    1   1.00
      0.96171241529D-01      1.0000000
P    3   1.00
     13.571470233           -0.40072398852D-01
      2.9257372874          -0.21807045028
      0.79927750754         -0.51294466049
P    1   1.00
      0.21954348034          1.0000000
D    1   1.00
      1.0000000              1.0000000
D    1   1.00
      0.16697708112          1.0000000
****


