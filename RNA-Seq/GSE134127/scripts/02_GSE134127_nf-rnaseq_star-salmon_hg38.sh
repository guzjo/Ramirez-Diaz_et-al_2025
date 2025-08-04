nextflow run nf-core/rnaseq -r 3.14.0 \
    -profile docker \
    --input '../GSE134127_fq/nf-core_fetchngs/samplesheet/samplesheet.csv' \
    --outdir '../results/GSE134127_nf-rnaseq_star-salmon_hg38_results' \
    -work-dir '../results/GSE134127_nf-rnaseq_star-salmon_hg38_results/nf-rnaseq_workdir' \
	--multiqc_title 'GSE134127_nf-rnaseq_star-salmon_hg38_report' \
	--fasta '/media/epigen/94A006E9A006D222/projects/genome_references/hg38_ensembl/ensembl_112/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz' \
	--gtf '/media/epigen/94A006E9A006D222/projects/genome_references/hg38_ensembl/ensembl_112/Homo_sapiens.GRCh38.112.gtf.gz' \
    --save_reference \
	--trimmer 'trimgalore' \
    --save_trimmed \
    --aligner 'star_salmon' \
	--max_cpus 16 \
	--max_memory "44.GB" \
	-resume \
	&& echo -e "======\n\n   nf-core/rnaseq pipeline executed successfully   \n\n======"
