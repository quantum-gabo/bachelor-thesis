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


***
## **Date:** 2025-03-20

>[!TODO]
>- [x] Compute RCUT1 errors for a larger range, so we can find a minimum. 
>- [ ] Simulated annealing is the next step after finding good hyperparameters
>- [ ] EOS using simulated annealing!!
>- [ ] 800 K - Room T 
>- [ ] Run MD for the new hyperparameters!
>- [ ] Compute the corresponding errors 

***
## **Date:** 2025-03-27

>[!Updates]
>- ...

>[!TODO]
>- [x] Two cases, using the local minima! 
>- [x] Change 4% volume and plot the results
>- [x] EOS using simulated annealing!!
>- [ ] 800 K - Room T 
>- [x] Run MD for the new hyperparameters!
>- [ ] Compute the corresponding errors 
>- [ ] Elastic tensor, a possiblility! Physical Properties of Crystals.
>- [x] Compute 2% of the total volume, then define a range [totvol - 2%, totvol + 2%] and generate 15 points.
>- [ ] Check OUTCAR.rxo, 20 steps

/users/project1/scratch2/jagla/jgb/ml/refitted_ml/model-1

/users/project1/scratch2/jagla/jgb/ml/refitted_ml/model-2/ML_ABN

***
## **Date:** 2025-04-03

>[!TODO] 
>- [ ] Compute the EOS for the two models and the Bulk modulus. 
>- [ ] If the Energy-Volume plot does not goes smoothly, reduce the range and half the volume step.
>- [ ] If the calculations continue to be inconsistent, take the lowest energy structures (5-8) from the prediction state, and look for differences (Vesta).
>- [ ] Relax the structure(s) with lowest energy, using IBRION=2, ISIF=3

>[!Question] What is the effect of temperature on the Bulk modulus?

***
## **Date:** 2025-04-10

> [!done] Updates
> -  We have computed the `EOS` for both models. **Model 1** with `RCUT1=36` & `RCUT2=4` has a negative derivative of the bulk modulus. This result could be related to overfitting  in the `RCUT1` parameter. On the other hand, **Model 2** with `RCUT1=17` & `RCUT2=4` gives us a consistent value for the Bulk modulus and its derivative. 
> - The Bulk modulus result is: `51.0563 GPa`
> - Preliminary comparisons with some experimental measurements gives us a consistent agreement with our result. However, some parameters are not consistent, therefore, we cannot relate our results 100% with experimental setups.

>[!ToDo]
>- [ ] Compute another EOS using force field, the last structure from MD and perform simulated annealing. Take the one that has the lowest energy. Copy the CONTCAR file, then lower the temperature slowly till we reach 0 K.  
>- [ ] Take the last structure, since we want to begin the simulated annealing from the last temperature. 
>- [ ] 

>[!NOTE]
>- If the lattice parameters do not agree, it is not such a big problem, since it depends on the coordinates system the authors are reporting their results. 



rm cem1* CH* vasp* DOSCAR IBZKPT EIGENVAL HILLSPOT ICONST INCAR.sa ML_LOGFILE OSZICAR OUTCAR parll-param PCDAT REPORT WAVECAR XDATCAR ]


***
## **Date:** 2025-04-10

- [ ] Negative `B0'` is not a problem, but we have to compare our results with experimental data.
- [ ] Refit the ML models using ML_FFAST=FALSE.
- [ ] Run a new MD using LREAL = FALSE.
- [ ] EOS for the original MLFF
- [ ] Compute the optimal structure using ISIF=4
- [ ] Be careful, use the same parameters for the whole system.
- [ ] IBRION=2, ISIF=4, PBSolve
- [ ] Run the new MD simulation.



Refitted models, 3 eos, 

>[!TODO] Task 1
> - [x] Refit the ML_FF models again, this time make sure to set `ML_FFAST=.FALSE.` because the original ML_FF parameters must match the refitted ML models' parameters. 
> ```
> It cannot be done, the aforementioned parameter is automatically turned on when we run the MLFF in refit mode.
>```

>[!TODO] Task 2
> - [ ] Train a new `ML_FF` at 400K. This time set `LREAL=.FALSE.`; this will make the calculations more precise and hopefully lead to a better model.

>[!TODO] Task 3
> - [ ] Compute the `EOS` using the original ML_FF so we can contrast the discrepancies between models.

>[!TODO] Task 4
> - [ ] Carry out a structure optimisation using the structures generated from the EOS calculations using simulated annealing. Set IBRION=2 & ISIF=4 to leave the volume unchanged during the structure optimisation process. Then, plot the total energy against the volume, put all the plots together to catch any difference. 
> - [ ] Compute the `EOS` for this model, and compare it against the other models. This will reveal the most precise models. 




>[!Important] 
>- We used `IVDW=11` for the initial relaxation of our `CSH` structure, but did not included it for `ML_FF` or `MD` afterwards. This could cause a mismatch and lead to a biased `MLFF`. Moreover, avoiding `IVDW` prevents our model to learn accurate data, leading to a useless model. 
>- Henry gave us a `INCAR-rx` file intended to fix the volume of a structure and allow for ion relaxation. Nevertheless, `ISIF=4` was set, which allows for volume relaxations as well. We need to fix this and relax the structures. 
>- For our 300 K model, we did used `IVDW = 11`, since it makes sense to match the nature of the calculations from the beginning. So keep that in mind for future calculations. 




st2

use contcar rx2

