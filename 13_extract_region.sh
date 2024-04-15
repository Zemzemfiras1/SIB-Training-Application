#!/bin/bash

cd workdir/alignement_output

samtools view -bh \
SRR519926_sorted.bam \
U00096.3:2000000-2500000 \
> SRR519926.sorted.region.bam
