%mem=64gb
%nproc=8
#P TD(Nstates=10000) lc-whpbe/Gen  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
6 -0.02665500 -0.22092300 1.20691500
7 -0.02665500 0.57967500 0.00000000
6 -0.02665500 -0.22092300 -1.20691500
1 0.02892900 0.42719600 2.08233000
1 0.80083600 -0.94738300 1.25857100
1 -0.96171800 -0.78309400 1.26936700
1 0.77035900 1.19990500 0.00000000
1 -0.96171800 -0.78309400 -1.26936700
1 0.80083600 -0.94738300 -1.25857100
1 0.02892900 0.42719600 -2.08233000

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


