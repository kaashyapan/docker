# Golang workspace

  With emacs,
```
  alias golang='docker run -it --rm -p 80:8082 -p 35729:35729 \
                -v $HOME/workspace/golang/gopath:/go \
                -v $HOME/workspace/golang:/root \
                sundernarayanaswamy/golang'
```
