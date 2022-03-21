!STEOM-CCSD aug-cc-pVTZ TightSCF PrintMOs

*xyzfile 0 1 000014.xyz

%MaxCore 64000
%scf
 MaxIter 150
end

%pal nprocs 8
end

%mdci
 nroots 10
 DoRootwise true
end
