lass: top

## Snakemake

<br/>
Kevin Counts<br/>
Bioinformatics Engineering<br/><br/>

Health Informatics Institute<br/>
University of South Florida<br/>
<https://www.hii.usf.edu/>

---

## What is...

![Snakemake Logo](images/snakemake_logo.jpg)

<br/>

- A tool to create reproducible and scalable data analyses

- Operates on workflows described via human readable, Python based language

- Scales up and runs in local, HPC, or cloud environments with little or no modification to the workflow definition

---

## Workflows

- Snakemake workflows are Python scripts extended by declarative code to define:
  - Rules
  - Output Files
  - Input Files

- The workflow is usually defined in a `Snakefile`

- It operates similar to the GNU Make utility which uses a `Makefile`

- Workflow is determined automatically from:
  - The top (files you want)
  - ... to bottom (the files you have)
  - ... by applying very general rules with wildcards (e.g. `"{sample}.bam"`)

---

## The Idea

<br/><br/>

![Snakemake Idea](images/snakemake_idea.png)

---

## Implications

- You are not just defining what to do, but just as important the input/output "plumbing" between each step

- This allows snakemake to look at the pipeline as a whole

- It can determine what steps have run and what steps are left based on the input/output files

- It can automatically scale-out because by knowing the plumbing it knows when and where this is possible

---

## Installing Snakemake

- There are many installation methods but Conda works very well

- Download Python 3.6 installer at <https://conda.io/miniconda.html>

- Run installer script (e.g. `bash Miniconda3-latest-Linux-x86_64.sh -b`)

Then...

    $ export 'PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.bashrc

    $ source ~/.bashrc

    $ pip install snakemake

    $ snakemake --version
    5.2.1

---

## Example

A nice example is available here:

<http://slowkow.com/notes/snakemake-tutorial/>







