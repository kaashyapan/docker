# Elixir workspace

  With emacs, node  and postgres,
```
  alias elixir='docker run --name elixir -it --rm -p 80:4000 \
                -v $HOME/workspace/elixir:/root -v $HOME/workspace/postgres/:/var/lib/postgresql \
                 sundernarayanaswamy/elixir-dev'

```
