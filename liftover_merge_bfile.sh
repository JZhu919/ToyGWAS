BIM_DIR="/mnt/project/My/Data/GRCh38"
BED_DIR="/mnt/project/Bulk/Genotype_Results/Genotype_calls"
FAM_DIR="/mnt/project/Bulk/Genotype_Results/Genotype_calls"
MERGE_DIR="/mnt/project/My/Data/GRCh38"

# Merge
plink \
  --bed "${BED_DIR}/ukb22418_c1_b0_v2.bed" \
  --bim "${BIM_DIR}/ukb22418_c1_b0_v2_hg38.bim" \
  --fam "${FAM_DIR}/ukb22418_c1_b0_v2.fam" \
  --merge-list "${MERGE_DIR}/merge_list.txt" \
  --allow-extra-chr \
  --make-bed \
  --out "ukb22418_c1_22_hg38_merged"


