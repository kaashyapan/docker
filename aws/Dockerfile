FROM alpine

RUN apk --no-cache update && \
    apk --no-cache add bash bash-doc bash-completion python3 groff less && \
    pip3 --no-cache-dir install awscli aws-shell && \
    rm -rf /var/cache/apk/*

WORKDIR /home

CMD bash -c "aws-shell"
