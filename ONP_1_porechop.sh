#!/bin/bash
#SBATCH --partition carl.p
#SBATCH --nodes 2
#SBATCH --tasks-per-node 24
###SBATCH --cpus-per-task 
#SBATCH --time 23:59:59
#SBATCH --mem-per-cpu 5000
#SBATCH --job-name job_name
#SBATCH --output porechop_output_%j.txt

##load environment and module
module load hpc-env/8.3
module load Miniconda3/4.9.2

##manual activation of conda env

##Part 1 of ONP workflow - adapter trimming
##command input
porechop -i /path/to/raw/onp/reads/directory -o /path/to/output/file.fastq.gz -t 48
