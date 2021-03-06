#!/bin/bash

#QSUB=/u/systems/UGE8.0.1vm/bin/lx-amd64/qsub

# Uncomment the line below and fill in the name of the individuals.

individuals_array=(C23 MD18 NCF02 TMC02) 

for i in "${individuals_array[@]}"
do

qsub -N ${i}MarkAdapters step2_MarkAdapters.sh ${i} /u/flashscratch/c/ckyriazi/caracals/output/01_FastqToSam /u/flashscratch/c/ckyriazi/caracals/output/02_MarkAdapters
sleep 1m

done
