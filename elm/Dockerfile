FROM node

MAINTAINER sunder.narayanaswamy@gmail.com

RUN yarn global add brunch firebase-tools google-closure-compiler-js \ 
                    elm elm-test elm-css elm-format@exp elm-oracle \
                    tern js-beautify jshint browser-sync \
		    purescript pulp bower 
                    
RUN apt-get update && apt-get install -y emacs git silversearcher-ag

RUN apt-get -y autoremove && \
    apt-get -y clean  && \
    apt-get -y autoclean  && \
    rm -rf /var/lib/apt/lists/*

# http server to be tied to port 80
EXPOSE 3000

# websocket ports for brunch watch
EXPOSE 9485-9495

# websocket port for livereload
EXPOSE 35729

WORKDIR /root

CMD /bin/bash

# tail -f /dev/null
