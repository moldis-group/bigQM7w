%mem=64gb
%nproc=8
#P TD(Nstates=10000) wB97XD/Gen  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
6 -1.20907800 -0.23621700 -0.02141600
6 0.09140600 0.54949800 0.04628300
8 1.22995400 -0.25880900 -0.10803600
1 -2.08082500 0.43237900 0.04543200
1 -1.27938200 -0.95802300 0.80919200
1 -1.27018000 -0.79764600 -0.96542100
1 0.13032600 1.12954700 0.99021300
1 0.12605600 1.28480600 -0.77230400
1 1.24040100 -0.90027100 0.60798000

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
O     0
S    5   1.00
   2266.1767785             -0.53431809926D-02
    340.87010191            -0.39890039230D-01
     77.363135167           -0.17853911985
     21.479644940           -0.46427684959
      6.6589433124          -0.44309745172
S    1   1.00
      0.80975975668          1.0000000
S    1   1.00
      0.25530772234          1.0000000
S    1   1.00
      0.76572453250D-01      1.0000000
P    3   1.00
     17.721504317            0.43394573193D-01
      3.8635505440           0.23094120765
      1.0480920883           0.51375311064
P    1   1.00
      0.27641544411          1.0000000
P    1   1.00
      0.69002276350D-01      1.0000000
D    1   1.00
      1.2000000              1.0000000
D    1   1.00
      0.17992024323          1.0000000
****


