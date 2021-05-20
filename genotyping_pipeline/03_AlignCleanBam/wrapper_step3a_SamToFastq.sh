#!/bin/bash

individuals_array=(C23 MD18 NCF02 TMC02)

for i in "${individuals_array[@]}"
do

qsub -N ${i}SamToFastq step3a_SamToFastq.sh ${i} /u/scratch/c/ckyriazi/caracals/output/02_MarkAdapters  /u/scratch/c/ckyriazi/caracals/output/03_AlignCleanBam/
sleep 1m

done
