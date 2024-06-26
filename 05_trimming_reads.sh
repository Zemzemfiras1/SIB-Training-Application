#!/bin/bash 

READS_DIR=workdir/reads

TRIMMED_DIR=workdir/Trimmed_data

mkdir -p $TRIMMED_DIR

cutadapt \
--adapter AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
-A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
--quality-cutoff 10,10 \
--minimum-length 25 \
--output $TRIMMED_DIR/paired_trimmed_SRR519926_1.fastq \
--paired-output $TRIMMED_DIR/paired_trimmed_SRR519926_2.fastq \
$READS_DIR/SRR519926_1.fastq \
$READS_DIR/SRR519926_2.fastq

