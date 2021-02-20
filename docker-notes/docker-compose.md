# docker-compose

2 step process:

- Write `docker-compose` file describing all the containers
- Run `docker-compose` file

## Writing compose file

This is simple example of how `docker-compose.yaml` file should look.

```json
version: "3.7"
services:
    webserver:
        image: "ubuntu:latest"
        // build: .
        ports:
            - "8080:8080"
            - "8888:8888"
        volumes:
            - "my-folder:/workspace/my-folder"
```

## Running container

```shell
docker-compose -f docker-compose.yaml up
```
