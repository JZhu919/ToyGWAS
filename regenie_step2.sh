
for chr in {6..10}; do
  PFILE="/mnt/project/My/Data/Imp_GEL/ukb21008_c${chr}_b0_v1"
  SNPLIST="/mnt/project/My/Data/imp_gel_snp_qc_pass_c${chr}.snplist"
  IND_ID="/mnt/project/My/Data/imp_gel_snp_qc_pass_c${chr}.id"
  PHE="/mnt/project/My/Data/ischemia_df.phe"
  
  regenie \
    --step 2 \
    --pgen "${PFILE}" \
    --extract "${SNPLIST}" \
    --keep "${IND_ID}" \
    --phenoFile "${PHE}" \
    --phenoCol ischemia_cc \
    --covarFile "${PHE}" \
    --covarColList sex,age,bmi,ever_smoked,hdl_cholesterol,ldl_cholesterol,hypertension,pc1,pc2,pc3,pc4,pc5,pc6,pc7,pc8,pc9,pc10 \
    --bt \
    --minINFO 0.8 \
    --firth --approx --pThresh 0.01 \
    --pred /mnt/project/My/Data/regenie_step1_pred.list \
    --bsize 1000 \
    --out regenie_step2_c${chr}
done