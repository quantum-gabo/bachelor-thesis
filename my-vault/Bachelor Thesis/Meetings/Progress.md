I created this file to keep track of all my progress creating the draft of my bachelor thesis. 
***
## **Date:** 2025-01-02
We need to work in the introduction: 

Nothing done! 

***
## **Date:** 2025-01-03
Working on the introduction: 

Cement is the synthetic material currently produced in volumes larger than other any material in the world 

***
## **Date:** 2025-01-15
Cement is the synthetic material currently produced in volumes larger than other any material in the world, with more than 20 billion tons produced every year.  

***
## **Date:** 2025-01-16

***
## **Date:** 2025-01-22

- Relaxation completed by 22. Januar, and we started to compute the PDOS of the optimal structure.
- Added the correct labels in the figures. In addition, I included gray shaded rectangles to improve visualisation of the 1meV window criteria for convergence.

***
## **Date:** 2025-01-23
- Completed the PDOS analysis, confirmed the band gap and plotted the DOS of the structure. 

***
## **Date:** 2025-01-27
- Created the presentation using reveal.js. Some animations are pending since I am still learning how to use this tool.

>[!Questions]
>- [x] What is the exact order of the calculations?
>- [x] Why did we computed the k-points using vasp?

The order of the calculations is the following: 
1. `KPOINTS` using  **dftb+**
2. `ENCUT` using **vasp** and the results from step 1.
3. `KPOINTS` using **vasp** and the results from step 2.

>[!TODO]
>- [ ] Add a plot of the `KPOINTS` computed with **vasp** to the presentation!
>- [ ] Modify the `ENCUT` plot so we can notice the convergence.  

***
## **Date:** 2025-01-28
- Tried to use `py4vasp` for DOS analysis, but failed since I need a `vasp` executable file. 
- Doing some research to understand the structure of a `DOSCAR` file. 

***
## **Date:** 2025-01-30
We plotted the results of the benchmark. Results show that after `10 nodes` `total cpu time` stops decreasing. Therefore, the optimal number of nodes could be set to `10`.

>[!Note]
>Further analysis is necessary, since data for `13` and `15 nodes` is missing. 
>

***
## **Date:** 2025-01-31

- Tried to compute the performance of the relaxation using `13` and `15` nodes, this time using the `batch` profile, which failed anyway. 
- Proceeded to analyse the previous results. This time we computed the `speedup` and plotted against the number of nodes. 
- Preliminary results show that after `9-10` nodes, the speedup scales badly. We might conclude that there is not advantage in using more than `10` nodes for the upcoming calculations. 

***
## **Date:** 2025-02-25

>[!TODO] 
>- [x]  Write the `xstructs.sh` script to get the `POSCAR` file for 50 structures from the simulation. Save each one of them in a different directory.
>- [ ] The script must copy the following files: `INCAR`, `POTCAR`, `KPOINTS`, inside each one of the directories you just created. 
>- [ ] We need to save the `vaspout.h5` file for post-processing. 
>- [ ] We could reuse `WAVECAT` file for speedup. 


