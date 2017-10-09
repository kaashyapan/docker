FROM lucascosta/serverless-python3.6

MAINTAINER sunder.narayanaswamy@gmail.com

RUN apt-get update && apt-get install -y \
    emacs git curl groff less && \
    pip3 --no-cache-dir install awscli aws-shell

RUN apt-get -y autoremove && \
    apt-get -y clean  && \
    apt-get -y autoclean  && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

CMD /bin/bash
