# Images

Images are the kinda light weight operating system. Whatever we code, we can simply build images which will contain all the dependenices to execute that code. Now we can simply run the complete code using docker without worring about installing various requirements or changing things when shifting to different operating system.

They are broadly classified into 2 categories:

- `Base Class`: this mainly consist of images which is made from scratch image. This typically includes images of OS.
- `Child Class`: this is images which are made using base class images. This typically includes images which users create.

## lets pull docker image from dockerhub

- `docker pull <image_name:tag>`
This is how we can simply use the base class / child class image by getting it from dockerhub

## Next

- I have discussed about running image in the [container section](containers.md)
- I have discussed about creating image in the [pipeline section](pipeline.md)
