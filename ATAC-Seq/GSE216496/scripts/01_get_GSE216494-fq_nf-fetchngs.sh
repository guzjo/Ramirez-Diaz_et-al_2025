nextflow run nf-core/fetchngs -r 1.12.0 \
	-profile docker \
	--input ../extra/GSE216496_AccList.csv \
	--outdir ../fq \
	--force_sratools_download \
	--max_cpus 8 \
	--max_memory '32.GB' \
	--max_time '12.h' \
	-resume \
&& echo -e "======\n\n        nf-core/fetchngs pipeline executed successfully       \n\n======"
