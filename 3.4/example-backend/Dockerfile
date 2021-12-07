FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY example-backend .

RUN apt-get update && apt-get install -y curl && \
    curl -O https://dl.google.com/go/go1.16.3.linux-amd64.tar.gz && \
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz && \
    export PATH=$PATH:/usr/local/go/bin && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    go build

ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com

EXPOSE ${PORT}

CMD ./server PORT=$PORT REQUEST_ORIGIN=$REQUEST_ORIGIN
