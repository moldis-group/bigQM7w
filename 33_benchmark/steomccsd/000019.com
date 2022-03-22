!STEOM-CCSD aug-cc-pVTZ TightSCF PrintMOs

*xyzfile 0 1 000019.xyz

%MaxCore 64000
%scf
 MaxIter 150
end

%pal nprocs 2
end

%mdci
 nroots 5
 DoRootwise true
end
