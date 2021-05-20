#!/bin/bash
#$ -l highp,h_rt=3:00:00,h_data=8G
#$ -pe shared 3
#$ -N caracals_SamToFastq
#$ -cwd
#$ -o /u/flashscratch/c/ckyriazi/caracals/output/genotyping_pipeline/03_AlignCleanBam
#$ -e /u/flashscratch/c/ckyriazi/caracals/output/genotyping_pipeline/03_AlignCleanBam
#$ -m bea
#$ -M ckyriazi




. /u/local/Modules/default/init/modules.sh
module load java/1.8.0_77

Individual=$1
InDir=$2
OutDir=$3

java -jar /u/local/apps/picard-tools/2.9.0/picard.jar SamToFastq \
I=${InDir}/${Individual}/${Individual}_MarkAdapters.bam \
FASTQ=${OutDir}/${Individual}/${Individual}_CleanBamToFastq.fastq \
CLIPPING_ATTRIBUTE=XT CLIPPING_ACTION=2 INTERLEAVE=true NON_PF=true \
2>>${OutDir}/${Individual}/${Individual}_Process_SamToFastq.txt \
