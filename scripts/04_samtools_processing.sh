#!/bin/bash

# SAM to BAM conversion, sorting, and indexing

samtools view -b \
  ~/BRCA_NGS/alignment/SRR35526940.sam \
  > ~/BRCA_NGS/alignment/SRR35526940.bam

samtools sort \
  -o ~/BRCA_NGS/alignment/SRR35526940_sorted.bam \
  ~/BRCA_NGS/alignment/SRR35526940.bam

samtools index \
  ~/BRCA_NGS/alignment/SRR35526940_sorted.bam
