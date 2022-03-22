%mem=64gb
%nproc=8
#P TD(Nstates=10000) wB97XD/Gen  SCF(maxcycles=100)  Int(Grid=ultrafine)

xGDB7_00001_tier4.com

0 1
8 -1.02862100 -0.39517700 -0.00000000
7 0.00000000 0.52622800 0.00000000
6 1.13274600 -0.03090700 0.00000000
1 -1.81657200 0.15179100 -0.00000000
1 1.99426200 0.62343900 0.00000000
1 1.25480200 -1.11196500 0.00000000

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
N     0
S    6   1.00
  19730.8006470              0.21887984991D-03
   2957.8958745              0.16960708803D-02
    673.22133595             0.87954603538D-02
    190.68249494             0.35359382605D-01
     62.295441898            0.11095789217
     22.654161182            0.24982972552
S    2   1.00
      8.9791477428           0.40623896148
      3.6863002370           0.24338217176
S    1   1.00
      0.84660076805          1.0000000
S    1   1.00
      0.33647133771          1.0000000
S    1   1.00
      0.13647653675          1.0000000
S    1   1.00
      0.68441605847D-01      1.0000000
P    4   1.00
     49.200380510            0.55552416751D-02
     11.346790537            0.38052379723D-01
      3.4273972411           0.14953671029
      1.1785525134           0.34949305230
P    1   1.00
      0.41642204972           .45843153697
P    1   1.00
      0.14260826011           .24428771672
D    1   1.00
      1.65400000             1.0000000
D    1   1.00
      0.46900000             1.0000000
D    1   1.00
      0.12829642058          1.0000000
F    1   1.00
      1.09300000             1.0000000
****
O     0
S    6   1.00
  27032.3826310              0.21726302465D-03
   4052.3871392              0.16838662199D-02
    922.32722710             0.87395616265D-02
    261.24070989             0.35239968808D-01
     85.354641351            0.11153519115
     31.035035245            0.25588953961
S    2   1.00
     12.260860728            0.39768730901
      4.9987076005           0.24627849430
S    1   1.00
      1.1703108158           1.0000000
S    1   1.00
      0.46474740994          1.0000000
S    1   1.00
      0.18504536357          1.0000000
S    1   1.00
      0.70288026270D-01      1.0000000
P    4   1.00
     63.274954801            0.60685103418D-02
     14.627049379            0.41912575824D-01
      4.4501223456           0.16153841088
      1.5275799647           0.35706951311
P    1   1.00
      0.52935117943           .44794207502
P    1   1.00
      0.17478421270           .24446069663
P    1   1.00
      0.51112745706D-01      1.0000000
D    1   1.00
      2.31400000             1.0000000
D    1   1.00
      0.64500000             1.0000000
D    1   1.00
      0.14696477366          1.0000000
F    1   1.00
      1.42800000             1.0000000
****


