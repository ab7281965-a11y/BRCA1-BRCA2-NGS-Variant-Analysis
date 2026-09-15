#!/bin/bash

# fastp preprocessing for paired-end sequencing reads

mkdir -p ~/BRCA_NGS/trimmed
mkdir -p ~/BRCA_NGS/qc_trimmed

fastp \
  -i ~/BRCA_NGS/BRCA_SRA/SRR35526940_1.fastq \
  -I ~/BRCA_NGS/BRCA_SRA/SRR35526940_2.fastq \
  -o ~/BRCA_NGS/trimmed/SRR35526940_1_trimmed.fastq \
  -O ~/BRCA_NGS/trimmed/SRR35526940_2_trimmed.fastq \
  --html ~/BRCA_NGS/qc_trimmed/SRR35526940_fastp.html \
  --json ~/BRCA_NGS/qc_trimmed/SRR35526940_fastp.json
