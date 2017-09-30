# Elixir workspace

  With emacs & node,

  First start the postgres instance as 
```
                  docker run --rm --name postgres -d \
                  -v $HOME/workspace/postgres/:/var/lib/postgresql/ \
                  -e 'POSTGRES_USER=postgres' \
                  -e 'POSTGRES_PASSWORD=postgres' \
                  -e 'POSTGRES_ENCODING=UNICODE' \
                  blacklabelops/postgres
```

  Start elixir instance with

```
                  docker run --name elixir -it --rm --link postgres -p 80:4000 \
                  -v $HOME/workspace/elixir:/root sundernatayanaswamy/elixir-dev
```

  Install hex & phoenix and you are good.

```
	$ mix local.hex
        $ mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
```

  Remember to replace the host on config/dev.exs with the IP at which postgres is running

  You can query this from within the elixir container with $ env
