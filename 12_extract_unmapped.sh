#!/bin/bash

cd workdir/alignement_output
samtools view -bh -F 0x4 SRR519926_sorted.bam > SRR519926.sorted.mapped.bam

samtools view -bh -f 0x4 SRR519926_sorted.bam > SRR519926.sorted.unmapped.bam
