# Reorder chr and filter out contigs
plink2 \
  --bfile /mnt/project/My/Data/GRCh38/ukb22418_c1_22_hg38_merged \
  --chr 1-22 \
  --make-bed \
  --out ukb22418_c1_22_hg38_merged_sorted