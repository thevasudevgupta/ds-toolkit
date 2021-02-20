FROM ubuntu

RUN apt-get update && apt-get install -y python python3-pip sudo
RUN sudo apt install git

WORKDIR /usr/src/workspace/
COPY . .

EXPOSE 8080 8888

CMD ['echo', "Ready to go ..."]
