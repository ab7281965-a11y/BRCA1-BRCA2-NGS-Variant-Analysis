# BRCA1/BRCA2 NGS Variant Analysis — Documentation

This directory contains documentation for the **BRCA1/BRCA2 germline NGS variant analysis project**.

The project demonstrates a complete bioinformatics workflow for processing paired-end NGS reads, performing quality control, read alignment, variant calling, variant filtering, functional annotation, variant prioritization, and downstream visualization.

## Project Overview

The objective of this project was to analyze NGS sequencing data and identify and prioritize variants located in the **BRCA1 and BRCA2 genes**.

The analysis was performed using a combination of command-line bioinformatics tools, GATK-based variant calling, Ensembl Variant Effect Predictor (VEP), and R-based visualization.

The workflow was developed as a practical NGS bioinformatics portfolio project.

---

## Analysis Workflow

The complete workflow followed these major steps:

```text
Raw FASTQ Files
       ↓
Raw Read Quality Control
       ↓
Adapter/Quality Trimming with fastp
       ↓
Trimmed Read Quality Control
       ↓
Read Alignment to GRCh38
       ↓
SAM/BAM Processing with SAMtools
       ↓
GATK HaplotypeCaller
       ↓
Variant Quality Filtering
       ↓
VEP Functional Annotation
       ↓
BRCA1/BRCA2 Variant Prioritization
       ↓
R-Based Data Visualization
```

A visual representation of this workflow is available in:

`BRCA_NGS_Workflow.png`

---

## 1. Raw Sequencing Data

The analysis used paired-end Illumina sequencing data.

Input files:

* `SRR35526940_1.fastq`
* `SRR35526940_2.fastq`

The raw FASTQ files were examined using quality-control tools before downstream processing.

---

## 2. Raw Read Quality Control

Initial quality assessment was performed using **FastQC**.

The purpose of this step was to evaluate:

* Per-base sequence quality
* Per-sequence quality
* GC content
* Sequence length
* Adapter contamination
* Overrepresented sequences
* Other FastQC quality modules

The resulting QC information was used to assess the quality of the raw sequencing reads before trimming.

---

## 3. Read Trimming

Adapter sequences and low-quality bases were processed using **fastp**.

The trimming step was performed to improve the quality of reads used for downstream alignment.

fastp was also used to generate a comprehensive quality-control report containing:

* Read counts
* Quality statistics
* Adapter information
* Quality distribution
* Before/after trimming statistics

---

## 4. Trimmed Read Quality Control

FastQC was performed again after trimming.

This step was used to verify that the processed reads were suitable for alignment and to compare read quality before and after preprocessing.

The project therefore includes both:

* Raw-read QC
* Trimmed-read QC

---

## 5. Reference Genome

The human **GRCh38/hg38** reference genome was used for the analysis.

Reference information is documented separately in:

`reference/README.md`

The large reference FASTA and associated index files are not included in the GitHub repository because of their file size.

---

## 6. Read Alignment

The processed paired-end reads were aligned to the GRCh38 reference genome using **BWA-MEM**.

The resulting SAM/BAM files were processed using **SAMtools**.

The alignment workflow included:

* Read alignment
* SAM to BAM conversion
* Sorting
* Read-group assignment
* BAM indexing
* Alignment quality assessment

The alignment results demonstrated high mapping performance for the analyzed sequencing dataset.

---

## 7. Duplicate Marking

PCR/optical duplicate reads were assessed using **GATK MarkDuplicates**.

Duplicate metrics were generated to document the duplication characteristics of the sequencing data.

The processed BAM file and duplicate metrics are available in the `alignment/` directory where appropriate.

---

## 8. Variant Calling

Germline variants were identified using **GATK HaplotypeCaller**.

The analysis generated a VCF containing candidate genomic variants detected from the sequencing data.

The variant-calling stage forms the basis for the downstream filtering and annotation workflow.

---

## 9. Variant Filtering

The raw variant calls were filtered using quality criteria.

The main filtering criteria included:

* Variant quality (`QUAL`) ≥ 30
* Read depth (`DP`) ≥ 10

After filtering, the resulting variants were used for downstream annotation and prioritization.

The filtered variant data are available in the `results/` directory.

---

## 10. Functional Annotation with VEP

The identified variants were functionally annotated using the **Ensembl Variant Effect Predictor (VEP)**.

VEP was used to obtain information such as:

* Variant consequence
* Impact
* Gene
* Transcript
* Exon
* Protein position
* Amino-acid change
* Codon change
* Existing variant identifiers

The analysis used the **GRCh38** genome assembly.

The annotated variant table is available in the `results/` directory.

---

## 11. BRCA1/BRCA2 Variant Prioritization

Variants associated with the **BRCA1** and **BRCA2** genes were extracted and prioritized from the annotated dataset.

Variants with **HIGH** and **MODERATE** predicted consequences were identified for further analysis.

Additional sequencing-quality criteria were then applied to generate a high-confidence variant set.

The high-confidence dataset was used for downstream visualization.

---

## 12. Downstream Visualization

The final variant datasets were analyzed and visualized using **R/RStudio**.

The project includes visualizations showing:

* Variant type distribution
* Variant read-depth distribution
* Genotype quality distribution
* VEP consequence distribution
* VEP impact distribution
* BRCA1 vs BRCA2 variant distribution
* High-confidence variant quality ranges

These figures are available in the `results/figures/` directory.

---

## 13. Main Tools Used

| Analysis Step      | Tool                 |
| ------------------ | -------------------- |
| Raw QC             | FastQC               |
| Read trimming      | fastp                |
| Alignment          | BWA-MEM              |
| BAM processing     | SAMtools             |
| Duplicate marking  | GATK MarkDuplicates  |
| Variant calling    | GATK HaplotypeCaller |
| Variant filtering  | GATK / bcftools      |
| Variant annotation | Ensembl VEP          |
| Data processing    | Bash / Linux         |
| Visualization      | R / RStudio          |
| Version control    | Git / GitHub         |

---

## 14. Repository Organization

The repository is organized into separate directories according to the analysis stage:

```text
BRCA1-BRCA2-NGS-Variant-Analysis/
│
├── alignment/
├── data/
├── docs/
├── qc/
├── reference/
├── results/
├── scripts/
├── variants/
├── .gitignore
└── README.md
```

Each directory contains files related to a specific stage of the NGS workflow.

---

## 15. Reproducibility

The project was developed using Linux/Ubuntu command-line tools and documented analysis steps.

Scripts and generated analysis outputs are organized within the repository to make the workflow easier to understand and reproduce.

The project demonstrates practical experience with:

* Linux command line
* NGS quality control
* Sequence alignment
* BAM processing
* Germline variant calling
* VCF processing
* Variant annotation
* Variant prioritization
* R-based visualization
* Git/GitHub project organization

---

## Project Scope

This project is intended as a **bioinformatics portfolio and NGS workflow demonstration**.

The identified variants should not be interpreted as clinical diagnostic results. Clinical interpretation would require appropriate validation, laboratory confirmation, population databases, clinical databases, evidence review, and laboratory-specific reporting procedures.

---

## Documentation Contents

This documentation directory can contain:

* NGS workflow diagrams
* Analysis methodology
* Project notes
* Reproducibility information
* Interpretation guidelines
* Additional project documentation
