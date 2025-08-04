nextflow run nf-core/atacseq -r 2.1.2\
	-profile docker \
	--input '../extra/GSE216496_nf-atacseq_input.csv' \
	--outdir '../results/nf-atacseq_results_hg38_narrowPeak' \
	-work-dir '../results/nf-atacseq_results_hg38_narrowPeak/nf-atacseq_results_hg38_narrowPeak_workdir' \
	--multiqc_title 'GSE216496_nfcore-atacseq_hg38_narrowPeak' \
	--genome 'GRCh38' \
	--read_length 150 \
	--macs_gsize 2749859687 \
	--aligner 'bowtie2' \
	--narrow_peak \
	--max_cpus 16 \
	--max_memory 32.GB \
	-resume
&& echo -e "======\n\n        nf-core/atacseq pipeline executed successfully       \n\n======"
