#!/bin/bash

Refgen_dir=workdir/Ref_genome
var_dir=workdir/variants

mkdir -p $var_dir


bcftools norm -Ou -d all -f $Refgen_dir/Ecoli_str_K_12_MG165.fasta  $var_dir/variantscalls.bcf \
              -o $var_dir/normalized_variants.bcf
