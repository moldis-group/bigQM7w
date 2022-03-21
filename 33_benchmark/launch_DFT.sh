declare -a XC=("svwn5" "pw91pw91"  "blyp"  "pbepbe"  "tpsstpss" "b3lyp" "pbe1pbe" "tpssh" "m062x" "m11"  "lc-blyp" "lc-whpbe" "cam-b3lyp" )

for DFT in ${XC[@]}; do
  mkdir $DFT
  cd $DFT
  cp ../wb97xd/*com .
  for inp in *com; do
    sed -i "s/wB97XD/$DFT/g" $inp
    rung16_qa.sh $inp 8 $inp
  done
  cd ..
done


