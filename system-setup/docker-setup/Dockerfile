FROM ubuntu:18.04
LABEL maintainer="https://github.com/vasudevgupta7"

RUN apt-get update && \
    apt-get install -y python3-pip \
                       python3 \
    				   git

WORKDIR /usr/src/workspace/

COPY . docker/
RUN pip3 install -r docker/requirements.txt

CMD ["sh", "docker/entrypoint.sh"]
