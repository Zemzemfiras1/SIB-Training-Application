## This an application of NGS - Quality control, Alignment, Visualisation Sib Training

[![Nextflow website](https://img.shields.io/twitter/url/https/nextflowio.svg?colorB=26af64&&label=%40nextflow&style=popout)](https://www.nextflow.io/)    [![Nextflow version](https://img.shields.io/github/release/nextflow-io/nextflow.svg?colorB=26af64&style=popout)](https://github.com/nextflow-io/nextflow/releases/latest) [![Nextflow Publication](https://img.shields.io/badge/Published-Nature%20Biotechnology-26af64.svg?colorB=26af64&style=popout)](https://www.nature.com/articles/nbt.3820) [![installed with bioconda](https://img.shields.io/badge/installed%20with-Anaconda-brightgreen.svg?colorB=26af64&style=popout)](https://www.anaconda.com/) [![Nextflow license](https://img.shields.io/github/license/nextflow-io/nextflow.svg?colorB=26af64&style=popout)](https://github.com/nextflow-io/nextflow/blob/master/COPYING)
 

#### Required Software : 
[![Fastqc version](https://img.shields.io/badge/Fastqc-v0.12.1%20-blue)](https://anaconda.org/bioconda/fastqc)
[![Cutadpat version](https://img.shields.io/badge/Cutadapt-v1.18%20-blue)](https://anaconda.org/bioconda/cutadapt)
[![Bowtie2 version](https://img.shields.io/badge/Bowtie2-v2.2.5%20-blue)](https://anaconda.org/bioconda/bowtie2)
[![qualimap version](https://img.shields.io/badge/Qualimap-v2.2.2a%20-blue)](https://anaconda.org/bioconda/qualimap)
[![Samtools version](https://img.shields.io/badge/Samtools-v1.6%20-blue)](https://anaconda.org/bioconda/samtools)
[![Bcftools veersion](https://img.shields.io/badge/Bcftools-v1.9%20-blue)](https://anaconda.org/bioconda/bcftools)

#### Reproducibility
├── 01_download_reads.sh
├── 02_splitfiles_tofastq.sh
├── 03_check_downloading.sh
├── 04_run_fastqc.sh
├── 05_trimming_reads.sh
├── 06_fastqc_Trim.sh
├── 07_download_Ecoli_Reference.sh
├── 08_builtBowtie_indx.sh
├── 09_align_reads.sh
├── 10_compress_sort_indx.sh
├── 11_alignmentQC.sh
├── 12_extract_unmapped.sh
├── 13_extract_region.sh
├── 14_align_sort.sh
├── 15_createpileup.sh
├── 16_callingVariants.sh
├── 17_nomalize_variants.sh
├── README.md
└── workdir
    ├── alignement_output
    │   ├── SRR519926.bam
    │   ├── SRR519926.sam
    │   ├── SRR519926_sorted.bam
    │   ├── SRR519926_sorted.bam.bai
    │   ├── SRR519926.sorted.mapped.bam
    │   ├── SRR519926.sorted.mapped.frompipe.bam
    │   ├── SRR519926.sorted.region.bam
    │   └── SRR519926.sorted.unmapped.bam
    ├── Alignment_QC
    │   ├── css
    │   │   ├── agogo.css
    │   │   ├── ajax-loader.gif
    │   │   ├── basic.css
    │   │   ├── bgfooter.png
    │   │   ├── bgtop.png
    │   │   ├── comment-bright.png
    │   │   ├── comment-close.png
    │   │   ├── comment.png
    │   │   ├── doctools.js
    │   │   ├── down.png
    │   │   ├── down-pressed.png
    │   │   ├── file.png
    │   │   ├── jquery.js
    │   │   ├── minus.png
    │   │   ├── plus.png
    │   │   ├── pygments.css
    │   │   ├── qualimap_logo_small.png
    │   │   ├── report.css
    │   │   ├── searchtools.js
    │   │   ├── underscore.js
    │   │   ├── up.png
    │   │   ├── up-pressed.png
    │   │   └── websupport.js
    │   ├── genome_results.txt
    │   ├── images_qualimapReport
    │   │   ├── genome_coverage_0to50_histogram.png
    │   │   ├── genome_coverage_across_reference.png
    │   │   ├── genome_coverage_histogram.png
    │   │   ├── genome_coverage_quotes.png
    │   │   ├── genome_gc_content_per_window.png
    │   │   ├── genome_homopolymer_indels.png
    │   │   ├── genome_insert_size_across_reference.png
    │   │   ├── genome_insert_size_histogram.png
    │   │   ├── genome_mapping_quality_across_reference.png
    │   │   ├── genome_mapping_quality_histogram.png
    │   │   ├── genome_reads_content_per_read_position.png
    │   │   └── genome_uniq_read_starts_histogram.png
    │   ├── qualimapReport.html
    │   └── raw_data_qualimapReport
    │       ├── coverage_across_reference.txt
    │       ├── coverage_histogram.txt
    │       ├── duplication_rate_histogram.txt
    │       ├── genome_fraction_coverage.txt
    │       ├── homopolymer_indels.txt
    │       ├── insert_size_across_reference.txt
    │       ├── insert_size_histogram.txt
    │       ├── mapped_reads_gc-content_distribution.txt
    │       ├── mapped_reads_nucleotide_content.txt
    │       ├── mapping_quality_across_reference.txt
    │       └── mapping_quality_histogram.txt
    ├── reads
    │   ├── SRR519926
    │   ├── SRR519926_1.fastq
    │   ├── SRR519926_1_fastqc.html
    │   ├── SRR519926_1_fastqc.zip
    │   ├── SRR519926_2.fastq
    │   ├── SRR519926_2_fastqc.html
    │   └── SRR519926_2_fastqc.zip
    ├── Ref_genome
    │   ├── Ecoli_str_K_12_MG165.fasta
    │   ├── Ecoli_str_K_12_MG165.fasta.1.bt2
    │   ├── Ecoli_str_K_12_MG165.fasta.2.bt2
    │   ├── Ecoli_str_K_12_MG165.fasta.3.bt2
    │   ├── Ecoli_str_K_12_MG165.fasta.4.bt2
    │   ├── Ecoli_str_K_12_MG165.fasta.fai
    │   ├── Ecoli_str_K_12_MG165.fasta.rev.1.bt2
    │   └── Ecoli_str_K_12_MG165.fasta.rev.2.bt2
    ├── Trimmed_data
    │   ├── paired_trimmed_SRR519926_1.fastq
    │   ├── paired_trimmed_SRR519926_1_fastqc.html
    │   ├── paired_trimmed_SRR519926_1_fastqc.zip
    │   ├── paired_trimmed_SRR519926_2.fastq
    │   ├── paired_trimmed_SRR519926_2_fastqc.html
    │   └── paired_trimmed_SRR519926_2_fastqc.zip
    └── variants
        ├── normalized_variants.bcf
        ├── SRR519926.pileup.bcf
        └── variantscalls.bcf



