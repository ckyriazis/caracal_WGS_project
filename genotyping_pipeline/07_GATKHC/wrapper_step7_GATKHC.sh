#!/bin/bash



individuals_array=(NCF03)

for i in "${individuals_array[@]}"
do

qsub -N ${i}.step7 -t 1-10:1 step7_GATKHC_all.sh ${i} /u/home/c/ckyriazi/kirk-bigdata/caracals/output/genotyping_pipeline/06_BQSR /u/home/c/ckyriazi/kirk-bigdata/caracals/output/genotyping_pipeline/07_GATKHC
sleep 1m


done

