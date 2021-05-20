#!/bin/bash


individuals_array=(C23 MD18 NCF02 TMC02)

for i in "${individuals_array[@]}"
do

qsub -N ${i}BwaMem step3b_BwaMem.sh ${i} /u/flashscratch/c/ckyriazi/caracals/output/03_AlignCleanBam /u/home/c/ckyriazi/kirk-bigdata/caracals/output/genotyping_pipeline/03_AlignCleanBam 
sleep 2m

done
