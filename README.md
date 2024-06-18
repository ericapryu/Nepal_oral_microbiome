# Nepali oral microbiomes reflect a gradient of lifestyles from traditional to industrialized
This repository contains all scripts used to generate the results for "Nepali oral microbiomes reflect a gradient of lifestyles from traditional to industrialized." All analyses start in the same base directory. All analyses are conducted in R, unless otherwise specified. 

Note: all scripts assume that the working directory is set to a directory called `Nepal_oral_microbiome\`. Within `Nepal_oral_microbiome\`, there are sub-directories called `data\`, `output\`, and `figures\`. Within `data\`, there are directories called `fwd\` and `filt_path\`. Data is stored in the `fwd\` directory, while `filt_path\` is empty. Note that, with the exception of the metadata table `oralmicrobiome_surveydata.csv`, data files are not included in the repo due to size but are included as supplemental tables in the publication or on SRA under BioProject PRJNA1098228. 

```
Nepal_oral_microbiome
|- README		# Description of analysis scripts
|
|- data/		# Any data put into analyses - may be raw or processed (note: not version controlled currently due to size)
|    |- fwd/		          
|    |- filt_path/
|
|- output/		# Will contain output from scripts after they are run
|
|- figures/		# Will contain figures generated from scripts after they are run
+
```

All package info is in the R script `package_info.R`

## Table of contents
1. `oral_phyloseq.Rmd` - clean 16S rRNA gene amplicon sequence data and generate phyloseq object
2. `decontam.Rmd` - remove potential contaminants
3. `qc.Rmd` - additional QC and cleaning of the phyloseq object
4. `extraction_comparison.Rmd` - compare Qiagen and PowerSoil extraction kit data
5. `microbiome_characterization.Rmd` - examine metrics for standard microbiome characteristics (alpha and beta diversity)
6. `random_forest.Rmd` - use Random Forests to predict lifestyle based on lifestyle survey and microbiome data
7. `differential_abundance.Rmd` - perform differential abundance analysis with ALDEx2 to identify taxa that differ based on lifestyle
8. `microbiome_trend.Rmd` - perform trend test on all genera to see which microbial abundances follow the lifestyle trend
9. `CCA.Rmd` - conduct CCA to identify which specific lifestyle factors correlate with microbiome composition
10. `taxa_lifestyle.Rmd` - identify significant associations between specific lifestyle factors and DA microbes identified from the trend test.
11. `picrust2_prep.Rmd` - prepping data for PICRUSt2
12. `picrust_stratified.sh` (shell) - run stratified version of PICRUSt2 to predict pathway abundances.
13. `picrust_analysis.Rmd` - analyze PICRUSt2 output. All PICRUSt2 output from `picrust_stratified.sh` is assumed to be stored in its own directory `picrust2_qiagen_output\`
14. `network_analysis.Rmd` - conduct network analysis of the microbiome using SparCC
15. `gut_oral_comparison.Rmd` - examine the relationship between the oral and gut microbiomes
