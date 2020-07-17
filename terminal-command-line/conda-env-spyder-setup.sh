# INSTALL MINICONDA
# run the script at https://docs.conda.io/en/latest/miniconda.html using shell

# create your virtual env if you wish
conda create -n insights
conda activate insights
conda init

# setup spyder
pip install spyder

conda install spyder-terminal -c spyder-ide

pip install spyder-kernels

# add requirements
#pip install -r requirements.txt

## RUN BELOW COMMAND IN TERMINAL AND YOU ARE GOOD TO LAUNCH SPYDER. YAYYY
# spyder --reset
