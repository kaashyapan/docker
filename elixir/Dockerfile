FROM mcr.microsoft.com/dotnet/core/sdk:2.1

MAINTAINER sunder.narayanaswamy@gmail.com

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
                       zsh sudo \
                       build-essential software-properties-common ca-certificates \
                       silversearcher-ag jq \
                       tree git curl wget \
                       zip unzip gzip bzip2 unrar-free \
                       postgresql-client \
                       inotify-tools \
                       apt-transport-https dirmngr


RUN  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN  echo "deb https://download.mono-project.com/repo/debian stable-stretch main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
RUN  bash -c "wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb"
RUN  bash -c "curl -sL https://deb.nodesource.com/setup_10.x | bash -"

RUN apt-get update && apt-get install -y --no-install-recommends mono-devel fsharp python python-pip esl-erlang elixir nodejs

RUN bash -c "npm install -g serverless eslint js-beautify tern --unsafe-perm"

RUN bash -c "pip install setuptools --upgrade"
RUN bash -c "apt-get install -y --no-install-recommends groff less && pip install awscli aws-shell"

RUN echo "deb     [arch=amd64] http://emacs.secretsauce.net unstable main" >> /etc/apt/sources.list 
RUN echo "deb-src [arch=amd64] http://emacs.secretsauce.net unstable main" >> /etc/apt/sources.list 

RUN bash -c "wget -q -O - http://emacs.secretsauce.net/key.gpg | sudo apt-key add -"


ENV TZ=Asia/Colombo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV LANG C.UTF-8 
ENV LC_ALL C.UTF-8

WORKDIR /root

ENTRYPOINT /bin/zsh
