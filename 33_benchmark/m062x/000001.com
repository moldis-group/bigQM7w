%mem=64gb
%nproc=8
#P TD(Nstates=10000) m062x/Gen  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
6 0.00000100 0.00000600 -0.00000000
1 0.98523300 0.46299000 -0.02803500
1 -0.05618000 -0.68294300 0.84630500
1 -0.16812500 -0.55191100 -0.92353600
1 -0.76093700 0.77182500 0.10526900

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

