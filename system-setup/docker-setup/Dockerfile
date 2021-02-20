FROM pytorch/pytorch
LABEL maintainer="https://github.com/vasudevgupta7"

RUN apt-get update && \
    apt-get install -y git

WORKDIR /workspace/

COPY . .
RUN pip3 install -r requirements.txt

CMD ["sh", "entrypoint.sh"]
