%mem=64gb
%nproc=8
#P TD(Nstates=10000) pbepbe/Gen  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
8 0.00000000 0.00000000 0.11601500
1 0.00000000 0.76189500 -0.46405800
1 -0.00000000 -0.76189500 -0.46405800

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


