#!/bin/bash 
 
cd workdir 
qualimap bamqc -bam alignement_output/SRR519926_sorted.bam -ip -outdir Alignment_QC

