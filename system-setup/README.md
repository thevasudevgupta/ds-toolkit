# system-setup

This repo aims to ease process of setting up **deep learning enviroment**.
**Installing [miniconda](https://docs.conda.io/en/latest/miniconda.html)**

```python
# create environment
conda create -n dl python=3.8
conda init

# activate environment
conda activate dl

# run following for setup
sh entrypoint.sh
```

## Note

- You can change `requirements.txt` as per your needs.
- I will soon add support for setting up GPU using CUDA & CUDNN.
