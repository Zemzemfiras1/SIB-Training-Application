#!/bin/bash 

Ref_Dir=workdir/Ref_genome
Trimmed_Reads_Dir=workdir/Trimmed_data
Aligned_dir=workdir/alignement_output

mkdir -p $Aligned_dir

bowtie2 \
-x $Ref_Dir/Ecoli_str_K_12_MG165.fasta \
-1 $Trimmed_Reads_Dir/paired_trimmed_SRR519926_1.fastq \
-2 $Trimmed_Reads_Dir/paired_trimmed_SRR519926_2.fastq \
> $Aligned_dir/SRR519926.sam
