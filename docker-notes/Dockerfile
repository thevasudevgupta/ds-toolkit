# specify the base image
FROM ubuntu

# this command line will be simply executed while creating image
RUN apt-get update && apt-get install -y python python3-pip sudo

RUN sudo apt install git

# RUN useradd -m vasudevgupta

# RUN chown -R vasudevgupta:vasudevgupta /home/vasudevgupta/

# this will copy whatever in my current dir to my image directory
COPY . /home/vasudevgupta/files/

# USER vasudevgupta

# this command will be executed when container is ran
CMD ['lets learn how to use this awesome tool']

WORKDIR /home/vasudevgupta/files/

