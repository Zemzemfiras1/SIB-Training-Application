#!/bin/bash

cd workdir/reads

echo "The  number of the forward reads is :"
echo $(cat SRR519926_1.fastq | wc -l)/4 | bc

echo "The number of the reverse reads is :"
echo $(cat SRR519926_2.fastq | wc -l)/4 | bc 

