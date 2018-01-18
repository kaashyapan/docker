FROM eawsy/aws-lambda-go-shim

MAINTAINER sunder.narayanaswamy@gmail.com

ENV GOPATH /home/gopath
ENV GOROOT /usr/local/go

WORKDIR /home/workspace

CMD  bash -c 	"export PATH=$PATH:$GOPATH/bin && \
	      	go build -buildmode=plugin -o handler.so && \ 
		pack handler handler.so handler.zip"
