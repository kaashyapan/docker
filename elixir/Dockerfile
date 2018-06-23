FROM frolvlad/alpine-glibc

MAINTAINER sunder.narayanaswamy@gmail.com

RUN apk update && apk upgrade && apk add build-base \
                      elixir elixir-doc zsh sudo \
                      emacs-nox \
                      nodejs \
                      the_silver_searcher jq \
                      inotify-tools \
                      git \
                      tree \
                      postgresql-client \
                      zip unzip unrar gzip bzip2 \
                      curl wget \
                      openssh openssh-keygen \
                      aws-cli aws-cli-zsh-completion \
#                     hiawatha \
                      go go-doc go-tools \
                      opam \
                      sqlite \
#                     reason reason-merlin reason-rtop reason-rebuild reason-reactjs \
#                     rust rust-dbg rust-doc cargo cargo-doc cargo-zsh-completion \
                      --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

RUN npm install -g jshint js-beautify tern \
#                   elm elm-format elm-oracle elm-test \
# 	           bs-platform@3.0.0 reason-cli \
#   		   webpack webpack-cli \
                   --unsafe-perm

EXPOSE 4000

WORKDIR /root

CMD /bin/zsh
