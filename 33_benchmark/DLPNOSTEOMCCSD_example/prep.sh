for i in $(cat names.dat); do
echo "!STEOM-DLPNO-CCSD aug-cc-pVTZ aug-cc-pVTZ/C def2/J TightSCF PrintMOs"  > $i.com 
echo ""                                          >> $i.com
echo "*xyzfile 0 1 $i.xyz"		         >> $i.com
echo ""                                          >> $i.com
echo "%MaxCore 64000"                            >> $i.com
echo "%scf"                                      >> $i.com
echo " MaxIter 150"                              >> $i.com
echo "end"                                       >> $i.com
echo ""                                          >> $i.com
echo "%pal nprocs 8"                             >> $i.com
echo "end"                                       >> $i.com
echo ""                                          >> $i.com
echo "%mdci"                                     >> $i.com
echo " nroots 10"                                >> $i.com
echo " DoRootwise true"                          >> $i.com
echo "end"                                       >> $i.com

#Nat=$(grep -B1 $i.xyz 33.xyz | head -1 | awk {'print $1'})
#echo $Nat > $i.xyz
#grep -A$Nat $i.xyz 33.xyz >> $i.xyz 
done
