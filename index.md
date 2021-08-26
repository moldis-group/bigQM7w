---
layout: default
---

## bigQM7&omega; dataset

This dataset [Ref-1]() contains structures, ground state and electronic spectra calculated with the range-separated hybrid DFT method, &omega;B97XD. All results are provided for 3 basis sets: 3-21G, def2SVP, def2TZVP. Results from baseline models PM6 and ZINDO are also provided. Geometries at all levels retain connectivities as encoded in the original SMILES. 

***

## SMILES and Geometries

_3 uncharacterized molecules (indices: 7705, 7714, 7715) containing -N=N-O- substructure in a ring are eliminated. 
See Ref-1 for more details._


#### SMILES from GDB11 universe for 12880 molecules and UFF geometries
[bigQM7w.smi.bz2](https://drive.google.com/file/d/1UujnGhD7UcgHMyZ6UrYHwW2oroiQOmQy/view?usp=sharing) (52 kB)     
[bigQM7w_UFF.sdf.bz2](https://drive.google.com/file/d/1aeYRGRAwRaYMNNPArpxdd9SPv-0Kfofx/view?usp=sharing) (1.5 MB)     
[bigQM7w_UFF.xyz.bz2](https://drive.google.com/file/d/1qGGJkS3gZIGEqCJ6samtcflkSZCN4uoM/view?usp=sharing) (1.4 MB)      

#### Minimum energy geometries of 12880 molecules

[bigQM7w_PM6.xyz.bz2](https://drive.google.com/file/d/1aSsorhv6fM-SPDpKKri_0SfmJ8XXF9VS/view?usp=sharing) (2.0 MB)     
[bigQM7w_wB97XD_321G.xyz.bz2](https://drive.google.com/file/d/1rAYPSl0GecvWixiqtrwOHz0kHLek3fgW/view?usp=sharing) (1.9 MB)       
[bigQM7w_wB97XD_def2SVP.xyz.bz2](https://drive.google.com/file/d/1CsboCg7HbfAMyDwDrO192Tv6k_uA1QkG/view?usp=sharing) (2.0 MB)      
[bigQM7w_wB97XD_def2TZVP.xyz.bz2](https://drive.google.com/file/d/1mcfQ-ECk30H_YgT-mlcE26Eu8RIamE_t/view?usp=sharing) (2.0 MB)      

Unzip the files in linux as
```
bunzip2 -f bigQM7w.smi.bz2
bunzip2 -f bigQM7w_UFF.xyz.bz2
bunzip2 -f bigQM7w_UFF.sdf.bz2
bunzip2 -f bigQM7w_PM6.xyz.bz2
bunzip2 -f bigQM7w_wB97XD_321G.xyz.bz2
bunzip2 -f bigQM7w_wB97XD_def2SVP.xyz.bz2
bunzip2 -f bigQM7w_wB97XD_def2TZVP.xyz.bz2
```

***

## Ground state properties 

#### PM6-level properties 

**Column 01** Molecule index  
**Column 02** HOMO energy (in au)      
**Column 03** LUMO energy (in au) 
**Column 04** HOMO-LUMO gap (in au) 
**Column 05** Total energy (in au) 
**Column 06** Atomization energy (in au)      

#### &omega;B97XD-level properties 

**Column 01** Molecule index           
**Column 02** Dipole moment (in au)             
**Column 03** Polarizability (in au)              
**Column 04** HOMO energy (in au)               
**Column 05** LUMO energy (in au)               
**Column 06** HOMO-LUMO gap (in au)           
**Column 07** Radial expectation value, <_R_<sup>2</sup>> (in au)            
**Column 08** ZPVE (in au)              
**Column 09** U0                
**Column 10** UT             
**Column 11** HT                   
**Column 12** GT               
**Column 13** Cv              
**Column 14** Atomization energy (in au)                 

## Excited state properties at ZINDO and TD-&omega;B97XD levels

**Column 01** Excitation index, _k_, with respect to ground state   
**Column 02** Excitation energy, _E_(S<sub>0</sub>  → S<sub>k</sub>) (in eV)       
**Column 03** Excitation wavelength, _&lambda;_(S<sub>0</sub>  → S<sub>k</sub>) (in nm)   
**Column 04** Oscillator strength of _f_(S<sub>0</sub>  → S<sub>1</sub>)  excitation  
**Column 05** TX (in au), x-component of transition dipole moment vector     
**Column 06** TY (in au), y-component of transition dipole moment vector     
**Column 07** TZ (in au), z-component of transition dipole moment vector
**Column 08** T<sup>2</sup> (in au<sup>2</sup>), square of transition dipole moment 

[bigQM7w_ZINDO_spectra.tar.gz](https://drive.google.com/file/d/1YN6FEkBVEccDAT0ucgnDm2e5Tnz-VtgF/view?usp=sharing) (76 MB)     
[bigQM7w_TDwB97XD_321G_spectra.tar.gz](https://drive.google.com/file/d/1ZSv-8U8DGmQkrGdLpR3jCcyPalD1UpsL/view?usp=sharing) (207 MB)       
[bigQM7w_TDwB97XD_def2SVP_spectra.tar.gz](https://drive.google.com/file/d/1vz3ICMFrUNzROPJkwfqe9VJyWMB6A1Nx/view?usp=sharing) (409 MB)      
[bigQM7w_TDwB97XD_def2TZVP_spectra.tar.gz]() (x MB)      

Untar the folders in linux as

```
tar -xzf bigQM7w_ZINDO_spectra.tar.gz     
tar -xzf bigQM7w_TDwB97XD_321G_spectra.tar.gz   
tar -xzf bigQM7w_TDwB97XD_def2SVP_spectra.tar.gz   
tar -xzf bigQM7w_TDwB97XD_def2TZVP_spectra.tar.gz 
```

Each folder contains 12880 zipped files. Unzip these, for example, as follows
```
cd bigQM7w_ZINDO_spectra
bunzip2 -f bigQM7w_ZINDO_000001.dat.bz2
...
bunzip2 -f bigQM7w_ZINDO_012880.dat.bz2
```

```
cd bigQM7w_TDwB97XD_def2TZVP_spectra
bunzip2 -f bigQM7w_TDwB97XD_def2TZVP_000001.dat.bz2
...
bunzip2 -f bigQM7w_TDwB97XD_def2TZVP_012880.dat.bz2
```
   

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
