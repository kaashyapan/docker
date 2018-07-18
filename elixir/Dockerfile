FROM microsoft/dotnet

MAINTAINER sunder.narayanaswamy@gmail.com

RUN apt-get update && \
		apt-get install -y --no-install-recommends \
		zsh sudo emacs25-nox \
    		silversearcher-ag jq \
    		tree git curl wget \
    		zip unzip gzip bzip2 \
		build-essential \
		postgresql-client \
		inotify-tools

RUN  apt install apt-transport-https dirmngr
RUN  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN  echo "deb https://download.mono-project.com/repo/debian stable-stretch main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
RUN  "wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb"
RUN  "curl -sL https://deb.nodesource.com/setup_8.x | bash -"

RUN apt-get update && apt-get install -y mono-devel fsharp python python-pip esl-erlang elixir nodejs

RUN bash -c "npm install -g serverless js-beautify tern bs-platform@3.0.0 reason-cli webpack webpack-cli --unsafe-perm"

RUN bash -c "pip install awscli"

WORKDIR /root

CMD /bin/zsh
