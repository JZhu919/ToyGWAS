# Read lifted BED file, create a mapping of BED col4 -> col1\tcol 2
# Read BIM file, replace col1/col4 in BIM with the mapped values from BED wherever available
# Print each line and save as a new BIM
BED_DIR="/mnt/project/My/Data/Liftover"
BIM_DIR="/mnt/project/Bulk/Genotype_Results/Genotype_calls"
for chr in {1..22}; do
    awk 'NR==FNR { a[$4]=$1"\t"$2; next } ($2 in a) {split(a[$2], vals, "\t"); $1 = vals[1]; $4 = vals[2];} 1' \
    "${BED_DIR}/ukb22418_c${chr}_b0_v2_hg38.bed" \
    "${BIM_DIR}/ukb22418_c${chr}_b0_v2.bim" \
    > "ukb22418_c${chr}_b0_v2_hg38.bim"
done