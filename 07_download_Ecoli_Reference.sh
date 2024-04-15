#!/bin/bash

Reference_dir=workdir/Ref_genome

mkdir -p $Reference_dir

cd $Reference_dir

esearch -db nuccore -query 'U00096' \
| efetch -format fasta > Ecoli_str_K_12_MG165.fasta
