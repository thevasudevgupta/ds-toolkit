## magic-wormhole

It can be used to send files/folders between two machines/ VMs.
```
Just install it using pip:  
pip install magic-wormhole

## Send file using following command:
magic-wormhole send <file_name>

## Receive files:
magic-wormhole receive <key-name>
```

## AWS S3

This is best method and very fast as compared to above. For this you need to have aws credits. Use this for transferring big data.<br>
**Installing [aws-cli](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html)**
```
# Install aws-cli first

# run following command to configure aws to local system
aws configure

# create s3 bucket
aws s3 mb s3://<bucket-name>

# copy data from local system to s3 bucket
aws s3 cp <dir> s3://<bucket-name> --recursive

# Go to remote system and configure aws there
aws configure

# copy data from s3 bucket to remote system
aws cp s3://<bucket-name> ./ --recursive
```