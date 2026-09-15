#!/bin/bash

# HISAT2 alignment of cleaned paired-end reads

mkdir -p ~/BRCA_NGS/alignment

hisat2 \
  -x ~/BRCA_NGS/reference/hisat2_index/grch38 \
  -1 ~/BRCA_NGS/trimmed/SRR35526940_1_trimmed.fastq \
  -2 ~/BRCA_NGS/trimmed/SRR35526940_2_trimmed.fastq \
  -S ~/BRCA_NGS/alignment/SRR35526940.sam
