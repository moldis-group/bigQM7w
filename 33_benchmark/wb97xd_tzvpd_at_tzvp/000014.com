%mem=64gb
%nproc=8
#P TD(Nstates=10000) wB97XD/Gen  SCF(maxcycles=100)  Int(Grid=ultrafine)

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
     34.0613410              0.60251978D-02
      5.1235746              0.45021094D-01
      1.1646626              0.20189726
S    1   1.00
      0.32723041             1.0000000
S    1   1.00
      0.10307241             1.0000000
P    1   1.00
      0.8000000              1.0000000
P    1   1.00
      0.95774129632D-01      1.0000000
****
C     0
S    6   1.00
  13575.3496820              0.22245814352D-03
   2035.2333680              0.17232738252D-02
    463.22562359             0.89255715314D-02
    131.20019598             0.35727984502D-01
     42.853015891            0.11076259931
     15.584185766            0.24295627626
S    2   1.00
      6.2067138508           0.41440263448
      2.5764896527           0.23744968655
S    1   1.00
      0.57696339419          1.0000000
S    1   1.00
      0.22972831358          1.0000000
S    1   1.00
      0.95164440028D-01      1.0000000
S    1   1.00
      0.48475401370D-01      1.0000000
P    4   1.00
     34.697232244            0.53333657805D-02
      7.9582622826           0.35864109092D-01
      2.3780826883           0.14215873329
      0.81433208183          0.34270471845
P    1   1.00
      0.28887547253           .46445822433
P    1   1.00
      0.10056823671           .24955789874
D    1   1.00
      1.09700000             1.0000000
D    1   1.00
      0.31800000             1.0000000
D    1   1.00
      0.90985336424D-01      1.0000000
F    1   1.00
      0.76100000             1.0000000
****


