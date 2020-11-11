# Example for HPC cluster @ UPF
This is a PyTorch implementation of a deep learning approach for digit recognition (classification) with MNIST dataset.

Notice that you have to change the working directory with `--workdir` argument in example_slurm.sh file.

### 1. Cloning the repository
```bash
$ git clone https://github.com/ameliajimenez/example-mnist.git
$ cd example-mnist/
```

### 2. Launching the script
```bash
$ sbatch example_slurm.sh
```

### 2. Monitoring 
```bash
$ squeue -u ajimenez
```
