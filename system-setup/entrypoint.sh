# __author__ == "Vasudev Gupta"
# __author_email__ == "7vasudevgupta@gmail.com"

# install minconda using shell-script at "https://docs.conda.io/en/latest/miniconda.html"
# create & activate environment
# then run this script

# change this to false if you don't want to install:
# - jupyter-notebook
# - jupyterlab
# - spyder
BONUS=true

echo "Installing packages specified in requirements.txt. This may take few minutes"
pip install -q -r requirements.txt
echo "packages installation done"

if [ $BONUS ]
then
    echo "installing bonus"

    # setup jupyter-notebook
    conda install -c conda-forge -q notebook
    echo "notebook installation done (if 'y')"

    # setup jupyter-lab
    conda install -c conda-forge -q jupyterlab
    echo "jupyterlab installation done (if 'y')"

    # setup spyder
    pip install -q spyder
    conda install -c spyder-ide -q spyder-terminal 
    pip install -q spyder-kernels 
    echo "spyder installation done (if 'y')"
    echo "run this command (if 'y'): spyder --reset"
else
    echo "BONUS stuff is not installed"
fi

echo "Enjoy your deep learning journey"
