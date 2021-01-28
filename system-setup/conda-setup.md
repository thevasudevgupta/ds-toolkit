# Conda Setup

**Installing [miniconda](https://docs.conda.io/en/latest/miniconda.html)**

```shell
# create environment
conda create -n <env-name> python=3.8
conda init

# activate environment
conda activate <env-name>
```

## Commands for setting up jupyter

```shell
# setup jupyter-notebook
conda install -c conda-forge notebook

# setup jupyter-lab
conda install -c conda-forge jupyterlab

# setup spyder
pip3 install spyder
conda install -c spyder-ide spyder-terminal 
pip3 install spyder-kernels 
spyder --reset
```
