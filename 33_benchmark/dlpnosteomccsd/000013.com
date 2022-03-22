!STEOM-DLPNO-CCSD aug-cc-pVTZ aug-cc-pVTZ/C def2/J TightSCF PrintMOs

*xyzfile 0 1 000013.xyz

%MaxCore 64000
%scf
 MaxIter 150
end

%pal nprocs 2
end

%mdci
 nroots 10
 DoRootwise true
end
