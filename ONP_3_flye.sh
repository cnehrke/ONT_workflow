#!/bin/bash
#SBATCH --partition carl.p
#SBATCH --nodes 2
#SBATCH --tasks-per-node 24
###SBATCH --cpus-per-task 
#SBATCH --time 14-00:00:00
#SBATCH --mem-per-cpu 5000
#SBATCH --job-name job_name
#SBATCH --output flye_output_%j.txt

##change into workdir
cd /path/to/fly/install

## Part 3 of ONP workflow - raed assembly
##command input
mkdir assembly_name
python bin/flye --nano-hq /path/to/filtered_fastq.fastq.gz --genome-size 700m -o /path/to/assembly_name -t 48 -i 1 
