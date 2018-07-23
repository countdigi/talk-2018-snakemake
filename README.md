# Snakemake

Slides at: <https://countdigi.github.io/talk-2018-snakemake>

## Resources

- [TEDDY Human WGS Snakemake Example](https://github.com/countdigi/snakemake-human-wgs-example)

- [Miniconda](https://conda.io/miniconda.html)

- [Snakemake Documentation](http://snakemake.readthedocs.io/en/stable/index.html)

- [Snakemake Tutorial](http://snakemake.readthedocs.io/en/stable/tutorial/tutorial.html)

- [Snakemake Tutorial, Unofficial ](http://slowkow.com/notes/snakemake-tutorial/)

## Example Run Output

```
$ snakemake
Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cores: 1
Rules claiming more threads will be scaled down.
Job counts:
        count   jobs
        1       all
        2       quantify_genes
        3

rule quantify_genes:
    input: data/ref/genome.fa, data/fastq/A.R1.fastq.gz, data/fastq/A.R2.fastq.gz
    output: work/quantify_genes/A.txt
    jobid: 1
    wildcards: sample=A

Finished job 1.
1 of 3 steps (33%) done

rule quantify_genes:
    input: data/ref/genome.fa, data/fastq/B.R1.fastq.gz, data/fastq/B.R2.fastq.gz
    output: work/quantify_genes/B.txt
    jobid: 2
    wildcards: sample=B

Finished job 2.
2 of 3 steps (67%) done

localrule all:
    input: work/quantify_genes/A.txt, work/quantify_genes/B.txt
    jobid: 0

Finished job 0.
3 of 3 steps (100%) done
Complete log: /home/countskm/dev/countdigi/talk-2018-snakemake/Examples/.snakemake/log/2018-07-23T080125.087362.snakemake.log
```
