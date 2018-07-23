#!/usr/bin/env bash

mkdir -p data work

printf '*\n!.gitignore\n' > data/.gitignore
printf '*\n!.gitignore\n' > work/.gitignore

mkdir -p data/ref

touch data/ref/genome.fa

mkdir -p data/fastq

for sample in A B; do
  touch data/fastq/${sample}.R1.fastq.gz data/fastq/${sample}.R2.fastq.gz
done
