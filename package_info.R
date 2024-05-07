sessionInfo()
# R version 4.1.2 (2021-11-01)
# Platform: x86_64-apple-darwin17.0 (64-bit)
# Running under: macOS Catalina 10.15.7
# 
# Matrix products: default
# BLAS:   /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
# LAPACK: /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRlapack.dylib
# 
# locale:
# [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
# 
# attached base packages:
# [1] parallel  stats4    stats     graphics  grDevices
# [6] utils     datasets  methods   base     
# 
# other attached packages:
# [1] igraph_1.6.0             Matrix_1.6-5            
# [3] SpiecEasi_1.1.2          biomformat_1.22.0       
# [5] ggridges_0.5.5           MicrobiomeProfiler_1.0.0
# [7] forcats_1.0.0            heatmaply_1.5.0         
# [9] viridis_0.6.4            plotly_4.10.4           
# [11] factoextra_1.0.7         FactoMineR_2.9          
# [13] purrr_1.0.2              DescTools_0.99.50       
# [15] ALDEx2_1.29.2.1          zCompositions_1.5.0-1   
# [17] truncnorm_1.0-9          NADA_1.6-1.1            
# [19] survival_3.5-7           tidyr_1.3.0             
# [21] magrittr_2.0.3           reshape2_1.4.4          
# [23] verification_1.42        dtw_1.23-1              
# [25] proxy_0.4-27             CircStats_0.2-6         
# [27] MASS_7.3-60.0.1          boot_1.3-28.1           
# [29] fields_15.2              viridisLite_0.4.2       
# [31] spam_2.10-0              randomForest_4.7-1.1    
# [33] FSA_0.9.5                ggsignif_0.6.4          
# [35] picante_1.8.2            nlme_3.1-164            
# [37] vegan_2.6-4              lattice_0.22-5          
# [39] permute_0.9-7            data.table_1.14.10      
# [41] microbiome_1.16.0        decontam_1.14.0         
# [43] phangorn_2.11.1          ape_5.7-1               
# [45] DECIPHER_2.22.0          RSQLite_2.3.5           
# [47] Biostrings_2.62.0        GenomeInfoDb_1.30.1     
# [49] XVector_0.34.0           IRanges_2.28.0          
# [51] S4Vectors_0.32.4         BiocGenerics_0.40.0     
# [53] dplyr_1.1.4              phyloseq_1.38.0         
# [55] dada2_1.22.0             Rcpp_1.0.12             
# [57] ggplot2_3.4.4           
# 
# loaded via a namespace (and not attached):
# [1] estimability_1.4.1         
# [2] coda_0.19-4                
# [3] bit64_4.0.5                
# [4] knitr_1.45                 
# [5] multcomp_1.4-25            
# [6] DelayedArray_0.20.0        
# [7] hwriter_1.3.2.1            
# [8] KEGGREST_1.34.0            
# [9] RCurl_1.98-1.14            
# [10] generics_0.1.3             
# [11] TH.data_1.1-2              
# [12] VGAM_1.1-9                 
# [13] shadowtext_0.1.3           
# [14] bit_4.0.5                  
# [15] enrichplot_1.14.2          
# [16] webshot_0.5.5              
# [17] httpuv_1.6.13              
# [18] SummarizedExperiment_1.24.0
# [19] assertthat_0.2.1           
# [20] xfun_0.41                  
# [21] jquerylib_0.1.4            
# [22] evaluate_0.23              
# [23] promises_1.2.1             
# [24] TSP_1.2-4                  
# [25] fansi_1.0.6                
# [26] dendextend_1.17.1          
# [27] readxl_1.4.3               
# [28] DBI_1.2.1                  
# [29] htmlwidgets_1.6.4          
# [30] shinycustomloader_0.9.0    
# [31] ellipsis_0.3.2             
# [32] RcppParallel_5.1.7         
# [33] deldir_2.0-2               
# [34] MatrixGenerics_1.6.0       
# [35] vctrs_0.6.5                
# [36] Biobase_2.54.0             
# [37] cachem_1.0.8               
# [38] withr_3.0.0                
# [39] ggforce_0.4.1              
# [40] emmeans_1.9.0              
# [41] treeio_1.18.1              
# [42] GenomicAlignments_1.30.0   
# [43] cluster_2.1.6              
# [44] DOSE_3.20.1                
# [45] dotCall64_1.1-1            
# [46] lazyeval_0.2.2             
# [47] crayon_1.5.2               
# [48] glmnet_4.1-8               
# [49] pkgconfig_2.0.3            
# [50] tweenr_2.0.2               
# [51] seriation_1.5.4            
# [52] rlang_1.1.3                
# [53] lifecycle_1.0.4            
# [54] sandwich_3.1-0             
# [55] downloader_0.4             
# [56] registry_0.5-1             
# [57] cellranger_1.1.0           
# [58] polyclip_1.10-6            
# [59] matrixStats_1.2.0          
# [60] aplot_0.2.2                
# [61] Rhdf5lib_1.16.0            
# [62] zoo_1.8-12                 
# [63] png_0.1-8                  
# [64] ca_0.71.1                  
# [65] rootSolve_1.8.2.4          
# [66] bitops_1.0-7               
# [67] rhdf5filters_1.6.0         
# [68] blob_1.2.4                 
# [69] shape_1.4.6                
# [70] stringr_1.5.1              
# [71] qvalue_2.26.0              
# [72] multcompView_0.1-9         
# [73] ShortRead_1.52.0           
# [74] gridGraphics_0.5-1         
# [75] jpeg_0.1-10                
# [76] scales_1.3.0               
# [77] leaps_3.1                  
# [78] memoise_2.0.1              
# [79] plyr_1.8.9                 
# [80] zlibbioc_1.40.0            
# [81] scatterpie_0.2.1           
# [82] compiler_4.1.2             
# [83] RColorBrewer_1.1-3         
# [84] Rsamtools_2.10.0           
# [85] cli_3.6.2                  
# [86] ade4_1.7-22                
# [87] patchwork_1.2.0            
# [88] mgcv_1.9-1                 
# [89] tidyselect_1.2.0           
# [90] stringi_1.8.3              
# [91] yaml_2.3.8                 
# [92] GOSemSim_2.20.0            
# [93] latticeExtra_0.6-30        
# [94] ggrepel_0.9.5              
# [95] grid_4.1.2                 
# [96] sass_0.4.8                 
# [97] fastmatch_1.1-4            
# [98] tools_4.1.2                
# [99] lmom_3.0                   
# [100] rstudioapi_0.15.0          
# [101] foreach_1.5.2              
# [102] gridExtra_2.3              
# [103] gld_2.6.6                  
# [104] scatterplot3d_0.3-44       
# [105] farver_2.1.1               
# [106] Rtsne_0.17                 
# [107] ggraph_2.1.0               
# [108] RcppZiggurat_0.1.6         
# [109] digest_0.6.34              
# [110] shiny_1.8.0                
# [111] quadprog_1.5-8             
# [112] GenomicRanges_1.46.1       
# [113] later_1.3.2                
# [114] shinyWidgets_0.8.1         
# [115] httr_1.4.7                 
# [116] AnnotationDbi_1.56.2       
# [117] colorspace_2.1-0           
# [118] fs_1.6.3                   
# [119] splines_4.1.2              
# [120] yulab.utils_0.1.3          
# [121] tidytree_0.4.6             
# [122] expm_0.999-9               
# [123] graphlayouts_1.1.0         
# [124] pulsar_0.3.11              
# [125] multtest_2.50.0            
# [126] Exact_3.2                  
# [127] ggplotify_0.1.2            
# [128] xtable_1.8-4               
# [129] ggtree_3.2.1               
# [130] jsonlite_1.8.8             
# [131] tidygraph_1.3.0            
# [132] flashClust_1.01-2          
# [133] Rfast_2.1.0                
# [134] ggfun_0.1.4                
# [135] R6_2.5.1                   
# [136] pillar_1.9.0               
# [137] htmltools_0.5.7            
# [138] mime_0.12                  
# [139] glue_1.7.0                 
# [140] fastmap_1.1.1              
# [141] clusterProfiler_4.2.2      
# [142] DT_0.31                    
# [143] BiocParallel_1.28.3        
# [144] class_7.3-22               
# [145] codetools_0.2-19           
# [146] maps_3.4.2                 
# [147] fgsea_1.20.0               
# [148] mvtnorm_1.2-4              
# [149] utf8_1.2.4                 
# [150] bslib_0.6.1                
# [151] tibble_3.2.1               
# [152] huge_1.3.5                 
# [153] config_0.3.2               
# [154] attempt_0.3.1              
# [155] golem_0.4.1                
# [156] GO.db_3.14.0               
# [157] interp_1.1-5               
# [158] rmarkdown_2.25             
# [159] munsell_0.5.0              
# [160] e1071_1.7-14               
# [161] DO.db_2.9                  
# [162] rhdf5_2.38.1               
# [163] GenomeInfoDbData_1.2.7     
# [164] iterators_1.0.14           
# [165] gtable_0.3.4   