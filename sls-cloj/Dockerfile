FROM clojure

MAINTAINER sunder.narayanaswamy@gmail.com

RUN apt-get update && apt-get install -y \
	emacs git curl 

RUN bash -c "curl -sL https://deb.nodesource.com/setup_6.x | bash -"

RUN apt-get install -y nodejs    

RUN npm install -g serverless 

RUN bash -c "curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh"

RUN apt-get -y autoremove && \
    apt-get -y clean  && \
    apt-get -y autoclean  && \
    rm -rf /var/lib/apt/lists/* 

WORKDIR /root

CMD /bin/bash
