#!/bin/bash

#SBATCH -p hpc-bio-lejeune 
#SBATCH --chdir=/home/alumno21/lab_7/
#SBATCH -J_Singularity
#SBATCH --output=slurm-singularity.out
#SBATCH --error=salida-err-singularity
#SBATCH --mail-type=NONE #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

module load singularity

gzip -d zebrafish.1.protein.faa.gz

singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot;singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt

module unload singularity