#!/bin/bash

# Filter variants using GATK VariantFiltration

mkdir -p ~/BRCA_NGS/variants/filtered_vcf

gatk VariantFiltration \
  -R ~/BRCA_NGS/reference/Homo_sapiens.GRCh38.dna.primary_assembly.fa \
  -V ~/BRCA_NGS/variants/raw_vcf/SRR35526940_raw.vcf.gz \
  -O ~/BRCA_NGS/variants/filtered_vcf/SRR35526940_filtered.vcf.gz \
  --filter-name "QD2" \
  --filter-expression "QD < 2.0" \
  --filter-name "FS60" \
  --filter-expression "FS > 60.0" \
  --filter-name "MQ40" \
  --filter-expression "MQ < 40.0"
