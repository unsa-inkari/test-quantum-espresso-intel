#!/bin/bash
#SBATCH --job-name          test-qe-intel
#SBATCH --time              720:00:00
#SBATCH --nodes             1
#SBATCH --ntasks-per-node   18
#SBATCH --mem               3GB
#SBATCH --error             output-%j.error
#SBATCH --output            output-%j.output

# Eliminamos los modulos cargados
module purge

# Cargando los modulos necesarios
module load quantum-espresso-intel/6.8

mpirun pw.x -input input.in > output.result
