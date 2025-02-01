This file will work as a record of the topics discussed during the meetings. Keeping track of all the necessary changes and updates in my bachelor thesis. This will be useful for the [[Progress]] section. 
***
## **Date:** 2025-01-21
- [/] Work on the presentation. It must include all the work we've done so far. 
- [/] Add adequate labels in the figures for the k-points and cutoff energy. 
- [/] Run the xwork.sh script to continue with the relaxation of the C-S-H structure. 

> [!Note] 
>- Prof. Henry changes some parts of the script for better readability  and usable along with the new version of `VASP`.
>- Changed `EDIF=-0.01`
>- Check INCAR-rxo file for tracking the relaxation process.
>- Included `BANDGAP=COMPACT`
>- Use `qsub` to submit a job.

## **Date:** 2025-01-28
- [/] Perform a benchmark for the structure relaxation using `1, 2, 3, 5,..., 15` nodes. 
- [ ] Use the `PDOS analysis` notebook to carry out a proper analysis of the results. 
- [/] Plot `#nodes` vs. `time` to get a better picture of the cluster's performance, and choose an optimal number of nodes accordingly. 

>[!Note]
>Some changes made in the `xbench.sh` file:
>- `ALGO=VeryFast`
>- `EDIFF=1E-5`
>- `PREC=COMMENTED`
>- Additionally, Prof. Henry edited a line to get around the memory problem. 

## **Date:** 2025-01-31
