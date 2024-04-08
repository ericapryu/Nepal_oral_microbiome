#!/bin/bash 

# The purpose of this script is to run the stratified module of picrust on the qiagen samples - takes a few hours total, especially the pathway abundance inference step

#SBATCH --time=12:00:00  
#SBATCH --nodes=2
#SBATCH --mem=10gb
#SBATCH -o picrust_stratified_qiagen.txt  
#SBATCH -A exd44 

d1=$(date +%s) 

RUN_PATH="/storage/group/exd44/default/epr5208/Himalayan_oral_microbiome/picrust2"

BIOM="picrust_seq_tab_qiagen"
SEQ="picrust_seq_qiagen"
OUT_DIR="picrust2_qiagen_output"
KEGG_MAP="ko_to_path"
KEGG_NAME="ko_names"

# change to directory that has the files
cd $RUN_PATH

pwd 
echo "Job started"

# load conda environment
module load anaconda3
source activate picrust2

# make directory for output
mkdir $OUT_DIR

# format sequence file
grep -v '^x' ${SEQ}.txt | awk '{print ">seq"$1"\n"$2}' > ${SEQ}.fna

# sequence placement
place_seqs.py -s ${SEQ}.fna -o ${OUT_DIR}/out.tre -p 1 --intermediate placement_working

# hidden state prediction
hsp.py -i 16S -t ${OUT_DIR}/out.tre -o ${OUT_DIR}/marker_nsti_predicted.tsv.gz -p 1 -n

hsp.py -i EC -t ${OUT_DIR}/out.tre -o ${OUT_DIR}/EC_predicted.tsv.gz -p 1

hsp.py -i KO -t ${OUT_DIR}/out.tre -o ${OUT_DIR}/KO_predicted.tsv.gz -p 1

# metagenome prediction
metagenome_pipeline.py -i ${BIOM}.biom \
                       -m ${OUT_DIR}/marker_nsti_predicted.tsv.gz \
                       -f ${OUT_DIR}/KO_predicted.tsv.gz \
                       -o ${OUT_DIR}/KO_metagenome_out_stratified \
                       --strat_out

# infer pathway abundances
pathway_pipeline.py -i ${OUT_DIR}/KO_metagenome_out_stratified/pred_metagenome_contrib.tsv.gz \
                    -o ${OUT_DIR}/KEGG_pathways_out_stratified \
                    --no_regroup \
                    --map ${KEGG_MAP}.tsv \
                    --per_sequence_contrib \
                    --per_sequence_abun ${OUT_DIR}/KO_metagenome_out_stratified/seqtab_norm.tsv.gz \
                    --per_sequence_function ${OUT_DIR}/KO_predicted.tsv.gz

# add descriptions
add_descriptions.py -i ${OUT_DIR}/KEGG_pathways_out_stratified/path_abun_unstrat.tsv \
                    -o ${OUT_DIR}/KEGG_pathways_out_stratified/path_abun_unstrat_descrip.tsv \
                    --custom_map_table ${KEGG_NAME}.tsv

add_descriptions.py -i ${OUT_DIR}/KEGG_pathways_out_stratified/path_abun_unstrat_per_seq.tsv \
                    -o ${OUT_DIR}/KEGG_pathways_out_stratified/path_abun_unstrat_per_seq_descrip.tsv \
                    --custom_map_table ${KEGG_NAME}.tsv


# unzip output contents for downstream analysis
gunzip ${OUT_DIR}/KEGG_pathways_out_stratified/*.gz
gunzip ${OUT_DIR}/KO_metagenome_out_stratified/*.gz

sleep 60
echo "Job ended"

d2=$(date +%s) 
sec=$(( ( $d2 - $d1 ) )) 
hour=$(echo - | awk '{ print '$sec'/3600}') 
echo Runtime: $hour hours \($sec\s\) 