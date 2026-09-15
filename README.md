# BRCA1-BRCA2-NGS-Variant-Analysis

## Project Overview

This project demonstrates a bioinformatics workflow for germline variant analysis of BRCA1 and BRCA2 genes using next-generation sequencing (NGS) data.

The workflow includes quality control, read preprocessing, sequence alignment, BAM processing, variant calling, variant filtering, variant annotation, and downstream analysis.

## Analysis Workflow

SRA  
↓  
FASTQ  
↓  
FastQC  
↓  
fastp  
↓  
HISAT2 Alignment  
↓  
SAM/BAM Processing  
↓  
MarkDuplicates  
↓  
GATK Variant Calling  
↓  
VCF Filtering  
↓  
Ensembl VEP Annotation  
↓  
R-based Downstream Analysis

## Tools

- FastQC
- fastp
- HISAT2
- SAMtools
- Picard
- GATK
- Ensembl VEP
- R

## Repository Structure

```text
data/
├── raw/
└── processed/

reference/
qc/
alignment/

variants/
├── raw_vcf/
├── filtered_vcf/
└── annotated/

scripts/

results/
├── figures/
└── tables/

docs/
