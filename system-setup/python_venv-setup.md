# Setting up Virtual Env using Python

```shell
# creating python env
python3 -m venv <venv_name>
python3 -m venv <venv_name> --system-site-packages

# activate env
source <venv_name>/bin/activate

# checking what packages are installed
pip3 list
pip3 list --local
pip3 freeze

# installing packages
pip3 install [some_package]
pip3 install -r requirements.txt

# switching to default env
deactivate

# safely remove env-directory once work is done
rm -rf <venv_name>
```

**Note:** Don't put any of your script inside `<venv_name>` directory.
