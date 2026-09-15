#!/bin/bash

# GATK variant calling

mkdir -p ~/BRCA_NGS/variants/raw_vcf

gatk HaplotypeCaller \
  -R ~/BRCA_NGS/reference/Homo_sapiens.GRCh38.dna.primary_assembly.fa \
  -I ~/BRCA_NGS/alignment/deduplicated/SRR35526940_dedup.bam \
  -O ~/BRCA_NGS/variants/raw_vcf/SRR35526940_raw.vcf.gz
