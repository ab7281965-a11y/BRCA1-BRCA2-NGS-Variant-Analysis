#!/bin/bash

# Mark PCR/optical duplicate reads using Picard

mkdir -p ~/BRCA_NGS/alignment/deduplicated

picard MarkDuplicates \
  I=~/BRCA_NGS/alignment/SRR35526940_sorted.bam \
  O=~/BRCA_NGS/alignment/deduplicated/SRR35526940_dedup.bam \
  M=~/BRCA_NGS/alignment/deduplicated/SRR35526940_duplication_metrics.txt \
  CREATE_INDEX=true
