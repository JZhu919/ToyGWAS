# Convert BGEN to PGEN
# This step takes a long time, run in batch
BGEN_DIR="/mnt/project/Bulk/Imputation/Imputation from genotype (GEL)"

for chr in {1..21}; do
  echo "=== Processing chromosome ${chr} ==="
    
    plink2 \
        --bgen "${BGEN_DIR}/ukb21008_c${chr}_b0_v1.bgen" ref-first \
        --sample "${BGEN_DIR}/ukb21008_c${chr}_b0_v1.sample" \
        --make-pgen \
        --out ukb21008_c${chr}_b0_v1
  
  echo "=== Done chromosome ${chr} ==="
  echo
done