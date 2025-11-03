# Define input and output directories
BIM_DIR="/mnt/project/Bulk/Genotype_Results/Genotype_calls"

# Loop over autosomes (1–22)
for chr in {1..22}; do
    BIM_FILE="${BIM_DIR}/ukb22418_c${chr}_b0_v2.bim"
    BED_FILE="ukb22418_c${chr}_b0_v2_hg19.bed"

    # Convert .bim to UCSC BED format (0-based start, 1-based end)
    # BIM Columns: $1=chr, $2=rsid, $4=bp coordinate
    # BED Columns: $1=chr, $2=start, $3=end, $4=rsid
    awk '{print "chr"$1"\t"$4-1"\t"$4"\t"$2}' "$BIM_FILE" > "$BED_FILE"

    echo "Created: $BED_FILE"
done