# SNP QC for imputed GEL BGEN data (chr1-22)

PGEN_DIR="/mnt/project/My/Data/Imp_GEL"

# --rm-dup exclude-mismatch: when unequal duplicate-ID variants are found, exclude every member.
for chr in {1..22}; do
  echo "=== Processing chromosome ${chr} ==="

  plink2 \
    --pfile "${PGEN_DIR}/ukb21008_c${chr}_b0_v1" \
    --autosome \
    --maf 0.005 \
    --rm-dup exclude-mismatch \
    --write-snplist \
    --write-samples \
    --no-id-header \
    --out "imp_gel_snp_qc_pass_c${chr}"

  echo "=== Done chromosome ${chr} ==="
  echo
done