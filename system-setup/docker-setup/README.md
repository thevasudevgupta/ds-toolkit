# Docker image for DS/ML/DL tasks

```shell
# run this command to build custom image
docker build -t 7vasudevgupta/ds-setup:latest -f Dockerfile .

# running shell commands from container corr. to this image
docker run -p 8888:8888 -v host_machine_path:container_path -it 7vasudevgupta/ds-setup:latest bash

# get back to host-env
exit
```
