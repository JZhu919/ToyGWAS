OUT_FILE="chr_change.txt"

# Initialize / clear output file
echo -e "orig_chr\tmapped_chr\tstart\tend\trsID" > "$OUT_FILE"

for chr in {1..22}; do
    echo "Checking chr${chr}..."

    BED_FILE="ukb22418_c${chr}_b0_v2_hg38.bed"

    # Count total variants in the BED file
    total=$(wc -l < "$BED_FILE")

    # Extract variants that changed chromosome and append to summary file
    awk -v chr=$chr -v orig_chr=$chr -v OFS="\t" '
        {
            gsub(/^chr/, "", $1);  # remove "chr" prefix
            if ($1 != chr) print orig_chr, $1, $2, $3, $4;
        }
    ' "$BED_FILE" >> "$OUT_FILE"

    # Count how many changed for this chromosome
    changed=$(awk -v chr=$chr '
        { gsub(/^chr/, "", $1); if ($1 != chr) count++ }
        END { print count+0 }
    ' "$BED_FILE")

    echo "chr${chr}: ${changed}/${total} variants mapped to a different chromosome"
done

# Print summary
echo "-----------------------------------------"
echo "All cross-chromosome mappings saved to:"
echo "$OUT_FILE"
echo "-----------------------------------------"
