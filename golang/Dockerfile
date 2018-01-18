FROM golang

RUN apt-get update && apt-get install -y emacs git zip 

RUN apt-get -y autoremove && \
    apt-get -y clean  && \
    apt-get -y autoclean  && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENV MYGOPATH /go
ENV MYGOROOT /usr/local/go

CMD export GOPATH=$MYGOPATH && export GOROOT=$MYGOROOT && /bin/bash
