FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY input-website.sh .

RUN chmod +x input-website.sh

RUN apt-get update && apt-get install -y curl

CMD ./input-website.sh
