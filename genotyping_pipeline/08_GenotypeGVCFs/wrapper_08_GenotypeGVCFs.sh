#!/bin/bash


qsub -N step8.all -t 1-20:1 08_GenotypeGVCFs_all.sh /u/home/c/ckyriazi/kirk-bigdata/caracals/output/genotyping_pipeline/08_GenotypeGVCFs


