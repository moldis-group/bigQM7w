---
layout: default
---

## bigQM7&omega; dataset

This dataset [Ref-1]() contains structures, ground state and electronic spectra calculated with the range-separated hybrid DFT method, &omega;B97XD. All results are provided for 3 basis sets: 3-21G, def2SVP, def2TZVP. Results from baseline models PM6 and ZINDO are also provided. Geometries at all levels retain connectivities as encoded in the original SMILES. 

***

## SMILES and Geometries

```
3 uncharacterized molecules (indices: 7705, 7714, 7715) containing -N=N-O- substructure in a ring are eliminated. 
See Ref-1 for more details. 

```

#### SMILES from GDB11 universe for 12880 molecules and UFF geometries
[bigQM7w.smi]() (x MB)     
[bigQM7w_UFF.sdf]() (x MB)     
[bigQM7w_UFF.xyz]() (x MB)      

#### Minimum energy geometries of 12880 molecules

[bigQM7w_PM6.xyz]() (x MB)     
[bigQM7w_wB97_321G.xyz]() (x MB)       
[bigQM7w_wB97_def2SVP.xyz]() (x MB)      
[bigQM7w_wB97_def2TZVP.xyz]() (x MB)      

Unzip the files in linux as
```
bunzip2 -f bigQM7w.smi.bz2
bunzip2 -f bigQM7w_UFF.xyz.bz2
bunzip2 -f bigQM7w_UFF.sdf.bz2
bunzip2 -f bigQM7w_PM6.xyz.bz2
bunzip2 -f bigQM7w_wB97_321G.xyz.bz2
bunzip2 -f bigQM7w_wB97_def2SVP.xyz.bz2
bunzip2 -f bigQM7w_wB97_def2TZVP.xyz.bz2
```

***

## Ground state properties 

#### PM6-level properties 

Contains properties of 77412 BODIPYs, calculated at RIJCOSX-CAM-B3LYP/def2-TZVP level as described below

**Column 01** names of the molecules made up using site (s_nn) and type of substitution (g_mm)

```
Example: g_01_s_7_00002 implies there is a substitution at site 7 by group 01. 
The last digits (here _00002) are for indexing and can be ignored.  
Long names (Hextuply/Septuply-substituted) do not contain '_'.
```

**Column 02** T/V in training/validation set in ML       
**Column 03** State index (always 1)    
**Column 04** S<sub>0</sub>  → S<sub>1</sub>  Excitation energy (in cm^-1)    
**Column 05** S<sub>0</sub>  → S<sub>1</sub>  Excitation energy (in nm)     
**Column 06** S<sub>0</sub>  → S<sub>1</sub>  Excitation energy (in au)     
**Column 07** S<sub>0</sub>  → S<sub>1</sub>  Excitation energy (in eV)     
**Column 08** Oscillator strength of S<sub>0</sub>  → S<sub>1</sub>  excitation     
**Column 09** T^2 (in au^2), square of transition dipole moment     
**Column 10** TX (in au), x-component of transition dipole moment vector     
**Column 11** TY (in au), y-component of transition dipole moment vector     
**Column 12** TZ (in au), z-component of transition dipole moment vector      
**Column 13** DFT Ground State energy (in au)      
**Column 14** PM7 HOMO (in eV)       
**Column 15** PM7 LUMO (in eV)       
**Column 16** PM7 heat of formation (in kcal/mol)   

#### PM6-level properties 

***

## Excited state properties

| **Type**                 | **# entries**
| Unsubstituted            | 1       
| Singly-substituted       | 184      
| Doubly-substituted       | 22287     
| Triply-substituted       | 10999     
| Quadruply-substituted    | 10990     
| Quintuply-substituted    | 10982     
| Hextuply-substituted     | 10986     
| Septuply-substituted     | 10983     

## Data-mining platform

[https://moldis.tifrh.res.in/db/bigqm7w](https://moldis.tifrh.res.in/db/bigqm7w)

## Raw input/output files on NOMAD

[https://moldis.tifrh.res.in/db/bigqm7w](https://moldis.tifrh.res.in/db/bigqm7w)


***

## Revision notes

_15 September 2021: First upload_

***

## References
[Ref-1] [_Machine Learning 
Electronic Transition Probabilities across Chemical Space:
The Resolution-vs-Accuracy Dilemma_](https://doi.org/10.1088/2632-2153/abe347)            
Prakriti Kayastha, Raghunathan Ramakrishnan     
submitted (2021)  

***
