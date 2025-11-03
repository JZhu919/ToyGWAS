# SNP QC for merged UKB array dataset (c1-22, hg38)
BFILE_DIR="/mnt/project/My/Data/GRCh38"
PHENO_DIR="/mnt/project/My/Data"

plink2 \
  --bed "${BFILE_DIR}/ukb22418_c1_22_hg38_merged.bed" \
  --bim "${BFILE_DIR}/ukb22418_c1_22_hg38_merged.bim" \
  --fam "${BFILE_DIR}/ukb22418_c1_22_hg38_merged.fam" \
  --autosome \
  --maf 0.01 \
  --geno 0.05 \
  --hwe 1e-6 \
  --write-snplist \
  --write-samples \
  --no-id-header \
  --out array_snp_qc_pass_c1_22_merged
