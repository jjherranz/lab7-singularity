#!/bin/bash

module load singularity
(hostname
echo
singularity exec singularity/my-python.sif hostname
echo
cat /etc/os-release
echo
singularity exec singularity/my-python.sif cat /etc/os-release
echo
pwd
echo
singularity exec singularity/my-python.sif pwd
echo
ls -l /home
echo
singularity exec singularity/my-python.sif ls -l /home
echo
python --version
echo
singularity exec singularity/my-python.sif python --version
echo
ipython source/kmer-solution.ipynb
echo
singularity exec singularity/my-python.sif ipython /home/kmer-solution.ipynb) > output_manejando_singularity.txt



module unload singularity