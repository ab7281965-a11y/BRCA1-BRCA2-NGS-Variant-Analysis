#!/bin/bash

# FastQC quality control for raw sequencing reads

mkdir -p ~/BRCA_NGS/qc

fastqc \
  ~/BRCA_NGS/BRCA_SRA/SRR35526940_1.fastq \
  ~/BRCA_NGS/BRCA_SRA/SRR35526940_2.fastq \
  -o ~/BRCA_NGS/qc
