#!/bin/bash
#SBATCH --partition carl.p
#SBATCH --nodes 2
#SBATCH --tasks-per-node 24
###SBATCH --cpus-per-task 
#SBATCH --time 23:59:59
#SBATCH --mem-per-cpu 5000
#SBATCH --job-name job_name
#SBATCH --output filtlong_output_%j.txt

##load environment and module
module load hpc-env/8.3
module load Miniconda3/4.9.2

##manual activate conda environment

##Part 2 of ONP workflow - filter short reads
##command input
filtlong --min_length 1000 --keep_percent 90 /path/to/trimmed_fastq.fatq.gz  | gzip > /path/to/filtered_fastq.fastq.gz
