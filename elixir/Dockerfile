FROM elixir

MAINTAINER sunder.narayanaswamy@gmail.com

# Install node required for Phoenix framework
RUN apt-get update && apt-get install -y \
    inotify-tools emacs git curl make


RUN bash -c "curl -sL https://deb.nodesource.com/setup_6.x | bash -"

RUN apt-get install -y nodejs    

RUN apt-get -y autoremove && \
    apt-get -y clean  && \
    apt-get -y autoclean  && \
    rm -rf /var/lib/apt/lists/* 
 

RUN git clone https://github.com/ferd/erlang-history.git /tmp/erlang-history && \
    cd /tmp/erlang-history && \
    make install && \
    rm /tmp/erlang-history -rf

EXPOSE 4000

WORKDIR /root

CMD /bin/bash
# tail -f /dev/null
