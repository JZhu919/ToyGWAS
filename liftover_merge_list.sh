# Define directories 

BIM_DIR="/mnt/project/My/Data/GRCh38"
BED_DIR="/mnt/project/Bulk/Genotype_Results/Genotype_calls"
FAM_DIR="/mnt/project/Bulk/Genotype_Results/Genotype_calls"
MERGE_LIST="merge_list.txt"

# Create merge list (chr2-22), use chr1 as base file
for chr in {2..22}; do
  echo "${BED_DIR}/ukb22418_c${chr}_b0_v2.bed" \
       "${BIM_DIR}/ukb22418_c${chr}_b0_v2_hg38.bim" \
       "${FAM_DIR}/ukb22418_c${chr}_b0_v2.fam" >> "${MERGE_LIST}"
done