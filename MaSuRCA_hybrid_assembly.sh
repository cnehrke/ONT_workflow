#!/bin/bash
#SBATCH --partition mpcb.p
#SBATCH --nodes 1
#SBATCH --tasks-per-node 16
###SBATCH --cpus-per-task 
#SBATCH --time 14-00:00:00
#SBATCH --mem-per-cpu 5000
#SBATCH --job-name job_name
#SBATCH --output masurca_%j.txt

##load environment and module
module load hpc-env/8.3
module load MaSuRCA/4.0.9-foss-2019b-Perl-5.30.0
mkdir /path/to/workdir
cd /path/to/workdir

## first step of hybrid assembly, assembly script will be constructed by this script. Please read documentation for more info, especially concerning config files
##command input
masurca masurca_config.cfg 
