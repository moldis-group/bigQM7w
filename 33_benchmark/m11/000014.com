%mem=64gb
%nproc=8
#P TD(Nstates=10000) m11/Gen  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
6 -0.00000000 1.26773100 -0.25908200
6 0.00000000 0.00000000 0.58555200
6 -0.00000000 -1.26773100 -0.25908200
1 0.00000000 2.16430800 0.36308700
1 -0.88145300 1.30767500 -0.90365200
1 0.88145300 1.30767500 -0.90365200
1 -0.87453200 0.00000000 1.24205500
1 0.87453200 -0.00000000 1.24205500
1 -0.88145300 -1.30767500 -0.90365200
1 -0.00000000 -2.16430800 0.36308700
1 0.88145300 -1.30767500 -0.90365200

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
C     0
S    5   1.00
   1238.4016938              0.54568832082D-02
    186.29004992             0.40638409211D-01
     42.251176346            0.18025593888
     11.676557932            0.46315121755
      3.5930506482           0.44087173314
S    1   1.00
      0.40245147363          1.0000000
S    1   1.00
      0.13090182668          1.0000000
S    1   1.00
      0.67053540256D-01      1.0000000
P    3   1.00
      9.4680970621           0.38387871728D-01
      2.0103545142           0.21117025112
      0.54771004707          0.51328172114
P    1   1.00
      0.15268613795          1.0000000
D    1   1.00
      0.8000000              1.0000000
D    1   1.00
      0.11713185140          1.0000000
****


