FROM golang:alpine

RUN apk --no-cache update && \
    apk --no-cache add bash bash-docs bash-completion curl emacs git && \
    rm -rf /var/cache/apk/*

WORKDIR /home

CMD export GOPATH=/home && export GOROOT=/usr/local/go && /bin/bash
