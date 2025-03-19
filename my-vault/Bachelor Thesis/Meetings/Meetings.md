This file will work as a record of the topics discussed during the meetings. Keeping track of all the necessary changes and updates in my bachelor thesis. 
***
## **Date:** 2025-01-21
- [x] Work on the presentation. It must include all the work we've done so far. 
- [x] Add adequate labels in the figures for the k-points and cutoff energy. 
- [\] Run the `xwork.sh` script to continue with the relaxation of the C-S-H structure. 

> [!Note] 
>- Prof. Henry changes some parts of the script for better readability  and usable along with the new version of `VASP`.
>- Changed `EDIF=-0.01`
>- Check INCAR-rxo file for tracking the relaxation process.
>- Included `BANDGAP=COMPACT`
>- Use `qsub` to submit a job.

***
## **Date:** 2025-01-28
- [/] Perform a benchmark for the structure relaxation using `1, 2, 3, 5,..., 15` nodes. 
- [x] Use the `PDOS analysis` notebook to carry out a proper analysis of the results. 
- [/] Plot `#nodes` vs. `time` to get a better picture of the cluster's performance, and choose an optimal number of nodes accordingly. 

>[!NOTE]
>Some changes made in the `xbench.sh` file:
>- `ALGO=VeryFast`
>- `EDIFF=1E-5`
>- `PREC=COMMENTED`
>- Additionally, Prof. Henry edited a line to get around the memory problem. 

***
## **Date:** 2025-02-01
This was a extra meeting. We had to talk about the next steps with regards to the construction of the MLFF for the C-S-H structure. 

- Set the `H` mass equal to 8, this does not affect our results. 

>[!TODO]
>- [x] Calculations are left to run for 48 hours, and we need to check the `OSZICAR` file regularly to ensure the calculations are going as expected. 
>- [ ] We need to review all the parameters of the `xml.sh` executable. All the parameters must be understood. 
>- [ ] Research about the parameters `ICONST`, `MPT`. 
>- [x] Temperature is set to `800 K`. Nevertheless, we changed to `400 K`, that is thought to be more suitable for the properties we are looking for. 
>- [x] Save the `XDATCAR` file. This could be used to create an animation of the structure later on. 
>- [x] Finally, the `REPORT` file contains the structure parameters, which should nor vary considerably with respect to the original ones. 

***
## **Date:** 2025-02-01
We skipped the meeting, however the calculations are completed successfully. 

## **Date:** 2025-02-13
>[!TODO]
>- [x] Copy the `REPORT`, `OSZICAR` and `XDATCAR` files from the cluster.
>- [x]  Plot the `etot` and `opt_vol` data vs. time steps
>- [x] Reproduce the plots to visualise the convergence and stability of the `opt_vol` and `etot` after the MD process.
>- [x] Generate a video animation of the  MD process.

>[!TIP] Some bash commands
> - `tar cjvf`
> - `tar xjvf`
> - `rsync -azP`
> - `grep 'LV' REPORT`
> - `grep 'T' OSZICAR`

***
## **Date:** 2025-02-20

>[!TODO] 
>- [x] Download the `ML_LOGFILE` from the cluster
>- [x] We need to perform an analysis of the errors. 
>- [x] Plot `n_iter` vs. `bee_max_force`
>- [ ]  Plot `n_iter` vs. `mse`
>- [x] MD solely on ML using 50k steps, then use 50~ of those structures and compute the electronic structure. 
>- [x] Write the script to extract the 50k structures. 


ls -lh ML_FF
cp ML_FFN md/ML_FF

INCAR_ml
POTCAR
POSCAR
CONTCAR 
eNE
FORCE
STRESS
Each 1000 steps save an structure
ML_RCUT1

PBSolve

LH5
LWAVE
LCHR

***
## **Date:** 2025-02-27

>[!NOTE] Updates
>- The script is ready. We only had to do some modifications so it works properly in the cluster. 
>- 

>[!TODO]
>- [ ] Compute the energies for each structure using MLFF
>- [ ] 1  
>- [ ] dfd
>- [ ] df

***
## **Date:** 2025-03-06

>[!NOTE] Updates
>- All the structures were computed successfully.
>- We have to perform the same calculation for each one of the structures, this time, using the MLFF.
>- We registered ourselves for the presentation. We have to prepare the presentation and correct the abstract. 
>- We are running a test job for the upcoming calculations.
>- 

>[!TODO]
>- [x] Compute the energies for each structure using MLFF.
>- [x] Check the `jgb/ml/test` directory. There will be the test files. 
>- [x] Check INCAR file 
>- [x] df

