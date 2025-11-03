BFILE="/mnt/project/My/Data/GRCh38/ukb22418_c1_22_hg38_merged_sorted"
SNPLIST="/mnt/project/My/Data/array_snp_qc_pass_c1_22_merged.snplist"
IND_ID="/mnt/project/My/Data/array_snp_qc_pass_c1_22_merged.id"
PHE="/mnt/project/My/Data/ischemia_df.phe"

regenie \
  --step 1 \
  --bed "${BFILE}" \
  --extract "${SNPLIST}" \
  --keep "${IND_ID}" \
  --phenoFile "${PHE}" \
  --phenoCol ischemia_cc \
  --covarFile "${PHE}" \
  --covarColList sex,age,bmi,ever_smoked,hdl_cholesterol,ldl_cholesterol,hypertension,pc1,pc2,pc3,pc4,pc5,pc6,pc7,pc8,pc9,pc10 \
  --bt \
  --bsize 1000 \
  --lowmem \
  --lowmem-prefix regenie_step1_tmp_preds \
  --out regenie_step1