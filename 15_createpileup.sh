#!/bin/bash

Refgen_dir=workdir/Ref_genome
align_dir=workdir/alignement_output
var_dir=workdir/variants

mkdir -p $var_dir


bcftools mpileup -Ou -f $Refgen_dir/Ecoli_str_K_12_MG165.fasta $align_dir/SRR519926_sorted.bam \
                 -o $var_dir/SRR519926.pileup.bcf 
