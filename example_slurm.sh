#!/bin/bash
#SBATCH -J mnist  # job name
#SBATCH -p high  # high -> walltime = infinite
#SBATCH -N 1  # number of nodes
#SBATCH --workdir=/homedtic/ajimenez/example-mnist/  # working directory
#SBATCH --gres=gpu:1  # use GPU
#SBATCH --time=100:00:00  # time limit
#SBATCH --mem=10G  # memory per node
 
#SBATCH -o example_mnist.2.%N.%J.%u.out # output file
#SBATCH -e example_mnist.2_.%N.%J.%u.err # error file

module load Python/3.6.4-foss-2017a
module load CUDA-10.1.105
module load PyTorch/1.6.0-foss-2017a-Python-3.6.4-CUDA-10.1.105
module load torchvision/0.7.0-foss-2017a-Python-3.6.4-PyTorch-1.6.0

#Run script
python -u main.py
