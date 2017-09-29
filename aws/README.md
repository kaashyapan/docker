# Alpine with the AWS shell

  Run it with a bash alias,
```
  alias aws='docker run -it --rm \
             -v $HOME:/root -v $PWD:/home  \
             sundernarayanaswamy/awsshell'
```
