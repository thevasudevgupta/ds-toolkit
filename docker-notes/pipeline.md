# Pipeline

Lets see about creating our own custom images.

## Create Dockerfile

You can easily do by running following command in terminal:

- `touch Dockerfile`
I will talk about adding stuff in Dockerfile in some other file.

## Create image

- `docker build -t <docker_user_name>/<specify_image_name>:<tag_name> .`
  - above `<tag_name>` is optional; If you don't specify that, `latest` tag will get associated to the image
  - `.` this simply represent the directory in which Dockerfile is present. You can specify path other way as well

## Run image

You can simply run this image; just like we did it earlier.

## Updating Images with containers

Now that you have created the container; what if you want to save that configuration as a updated image

- `docker commit -m <write_some_message> <container_name/container_id> <docker_user_name>/<image_name/image_id>:<tag_name>`
This command will simply update the previous image (if same name is given) or create the new image (otherwise)

## Push image to DockerHub

This step is optional. Its just like pushing files to github; but here you push and pull images instead. Here is command to do that actually:

- `docker push <docker_user_name>/<specify_image_name>:<tag_name>`

## Deleting Images

Now that we have learnt about creating images; lets see the best practice for deleting images:

- Stop the containers first (since containers are the running instance of images) `docker stop <container_name/container_id>`
- Delete the containers `docker rm <container_name/container_id>`
- Delete the image `docker rmi <image_name/image_id>`

## Additional Info

- If you choose to name the image as `<specify_image_name>:<tag_name>` instead of `<docker_user_name>/<specify_image_name>:<tag_name>`. Then you need to first tag that image in this particular fashion. and one extra copy will be created. so its best practice to specify the `<docker_user_name>` in first go.
