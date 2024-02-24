# Nepal_oral_microbiome
This repository contains all scripts used to analyze the Nepali oral microbiome. All analyses start in the same base directory. All scripts are conducted in R, unless otherwise specified.

#### Note: all scripts assume that the working directory is set to a directory called "Nepal_oral_microbiome". Within "Nepal_oral_microbiome", data is located in a directory called "data", and there are directories called "output" and "figures".

## Table of contents
1. oral_phyloseq - clean 16S sequence data and generate phyloseq object
2. decontam - remove contaminants
3. qc - additional QC and cleaning of the phyloseq object
4. extraction_comparison - compare Qiagen and PowerSoil extraction kits
5. microbiome_characterization - examine metrics for standard microbiome characteristics (alpha and beta diversity)
6. random_forest - use Random Forests to predict lifestyle based on lifestyle survey data and microbiome data
7. gut_rarefaction - rarefying the Nepal gut microbiome samples (from Jha et al., 2018) in prep for differential abundance analysis; uses phyloseq object acquired from paper
8. differential_abundance - perform differential abundance analysis with ALDEx2 to identify taxa that differ based on lifestyle
9. microbiome_trend - perform trend test on all genera to see which microbial abundances follow the lifestyle trend
10. CCA - conduct CCA to identify which specific lifestyle factors played the greatest role in the microbiome
11. Taxa_lifestyle - identify significant associations between specific lifestyle factors and DA microbes identified from the trend test.
12. PICRUSt2_prep - prepping data for PICRUSt2
13. PICRUSt2_stratified (shell) - run stratified version of PICRUST2 to predict pathway abundances.
14. PICRUSt2_analysis - analyze PICRUSt2 output. All PICRUSt2 output from script 13 is assumed to be stored in the output directory in its own directory "PICRUSt2_result"
15. network_analysis - conduct network analysis of the microbiome using SPARCC
16. gut_oral_comparison - examine the relationship between the oral and gut microbiomes