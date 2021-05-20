#!/bin/bash


qsub -N step9 -m abe -t 2-20:1 09_TrimAlternates_VariantAnnotator.sh

