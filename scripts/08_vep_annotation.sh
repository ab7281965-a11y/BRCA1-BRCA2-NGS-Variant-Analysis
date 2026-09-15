#!/bin/bash

# Ensembl Variant Effect Predictor (VEP) annotation

mkdir -p ~/BRCA_NGS/variants/annotated

vep \
  -i ~/BRCA_NGS/variants/filtered_vcf/SRR35526940_filtered.vcf.gz \
  -o ~/BRCA_NGS/variants/annotated/SRR35526940_vep_annotated.vcf \
  --vcf \
  --cache \
  --offline \
  --assembly GRCh38 \
  --symbol \
  --biotype \
  --canonical \
  --protein
