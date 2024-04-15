#!/bin/bash

cd workdir/alignement_output

samtools view -bh SRR519926.sam > SRR519926.bam
samtools sort SRR519926.bam > SRR519926_sorted.bam
samtools index SRR519926_sorted.bam

