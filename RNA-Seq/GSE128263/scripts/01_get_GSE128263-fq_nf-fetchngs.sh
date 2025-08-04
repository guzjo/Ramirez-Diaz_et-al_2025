nextflow run nf-core/fetchngs -r 1.12.0 \
	-profile docker \
	--input ../extra/GSE128263_AccList.csv \
	--outdir ../GSE128263_fq/nf-core_fetchngs \
	--max_cpus 8 \
	--max_memory '32.GB' \
	--max_time '12.h' \
    --nf_core_pipeline 'rnaseq' \
	-resume \
&& echo -e "======\n\n        nf-core/fetchngs pipeline executed successfully       \n\n======"
