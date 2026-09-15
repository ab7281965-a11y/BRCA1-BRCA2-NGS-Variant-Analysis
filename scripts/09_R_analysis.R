# Downstream analysis of annotated BRCA1/BRCA2 variants

# Load required package
library(readr)

# Input: VEP annotated VCF
input_file <- "~/BRCA_NGS/variants/annotated/SRR35526940_vep_annotated.vcf"

# Read the VEP annotation file
vcf_lines <- readLines(input_file)

# Keep non-header variant records
variant_lines <- vcf_lines[!grepl("^#", vcf_lines)]

# Convert variant records to a table
variants <- read.table(
  text = variant_lines,
  sep = "\t",
  header = FALSE,
  stringsAsFactors = FALSE
)

# Basic summary
cat("Total annotated variant records:", nrow(variants), "\n")

# Save a summary table
dir.create(
  "~/BRCA_NGS/results/tables",
  recursive = TRUE,
  showWarnings = FALSE
)

write.csv(
  variants,
  "~/BRCA_NGS/results/tables/annotated_variants.csv",
  row.names = FALSE
)

cat("Annotated variant table saved successfully.\n")
