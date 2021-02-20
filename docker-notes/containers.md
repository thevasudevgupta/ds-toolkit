# Containers

Containers are simply running instances of images. (You can think of them as instances of objects; just like what we have in object oriented python )

Whenever you run the image; a new container is created and it is what is actually running

## Lets play around

In this section, we will be creating containers and you can do it simply by running images

- `docker run -it <image_name>`

It is useful to initialize docker by a name. This becomes handy, if you want to play with the container. This you can do simply by following command:

- `docker run -it --name <specify_container_name> <image_name>`

Now a container is created and you can play around with containers using following commands

- `docker ps`
  - `-a` this flag can be used to access all the containers (whether running or stopped)
  - `-q` this is for getting only the ids for the containers
  - `--help` this is handy for learning about other possible options

## Some handy commands

- `docker start <container_id/container_name>`
- `docker pause <container_id/container_name>`
- `docker attach <container_id/container_name>`
- `docker unpause <container_id/container_name>`
- `docker stop <container_id/container_name>`

## Now lets explore about removing the containers

- `docker rm <container_id/container_name>`
Now a useful trick to remove multiple containers using a single command

- `docker rm $(<containers_ids>)`
`<containers_ids>` can be access like that  `docker ps -q` or any other way
