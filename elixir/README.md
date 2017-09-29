# Elixir workspace

  With emacs, node  and postgres,

	To persist postgres data on host,

	1) First run the image overriding CMD with /bin/bash
	2) Inside the container, drop and create new cluster. This creates the necessary directories on the mounted host directory.
	3) Exit and run the image with the command below.


```
  alias elixir='docker run --name elixir -it --rm -p 80:4000 \
                -v $HOME/workspace/elixir:/root -v $HOME/workspace/postgres/:/var/lib/postgresql \
                 sundernarayanaswamy/elixir-dev'

```
