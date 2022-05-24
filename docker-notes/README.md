# Docker

This repo contains small explaination of how docker works and some very handy command for using docker.

```bash
wget 'https://github.com/vasudevgupta7/ds-toolkit/raw/main/docker-notes/setup-docker-gpu.sh' --no-check-certificate -O - | bash

docker run --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 -it <IMAGE_NAME>
```

## Suggested Order of Reading

- [Introduction](docker-intro.md)
- [Docker Images](images.md)
- [Docker Containers](containers.md)
- [Pipeline for doing things](pipeline.md)
