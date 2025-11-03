# pip3 install CrossMap

for chr in {1..22}; do
  CrossMap bed b37ToHg38.over.chain ukb22418_c${chr}_b0_v2_hg19.bed ukb22418_c${chr}_b0_v2_hg38.bed;
  wc -l ukb22418_c${chr}_b0_v2_hg19.bed; # number of variants before mapping
	wc -l ukb22418_c${chr}_b0_v2_hg38.bed; # number of mapped variants
	wc -l ukb22418_c${chr}_b0_v2_hg38.bed.unmap; # number of unmapped variants
done