%mem=64gb
%nproc=8
#P TD(Nstates=10000) lc-blyp/Gen  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
9 0.00000000 0.00000000 0.68819300
9 0.00000000 0.00000000 -0.68819300

F     0
S    5   1.00
   2894.8325990             -0.53408255515D-02
    435.41939120            -0.39904258866D-01
     98.843328866           -0.17912768038
     27.485198001           -0.46758090825
      8.5405498171          -0.44653131020
S    1   1.00
      1.0654578038           1.0000000
S    1   1.00
      0.33247346748          1.0000000
S    1   1.00
      0.98097752264D-01      1.0000000
P    3   1.00
     22.696633924           -0.45212874436D-01
      4.9872339257          -0.23754317067
      1.3491613954          -0.51287353587
P    1   1.00
      0.34829881977          1.0000000
P    1   1.00
      0.83372148304D-01      1.0000000
D    1   1.00
      1.4000000              1.0000000
D    1   1.00
      0.22301361948          1.0000000
****


