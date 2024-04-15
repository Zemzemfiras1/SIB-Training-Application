#!/bin/bash

TRIMMED_DIR=workdir/Trimmed_data
REFERENCE_DIR=workdir/Ref_genome
ALIGNED_DIR=workdir/alignement_output

bowtie2 \
-x $REFERENCE_DIR/Ecoli_str_K_12_MG165.fasta \
-1 $TRIMMED_DIR/paired_trimmed_SRR519926_1.fastq \
-2 $TRIMMED_DIR/paired_trimmed_SRR519926_2.fastq \
| samtools sort - \
| samtools view -bh - \
> $ALIGNED_DIR/SRR519926.sorted.mapped.frompipe.bam
