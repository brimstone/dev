FROM brimstone/ubuntu:14.04

ENTRYPOINT /loader

RUN apt-get update \
	&& apt-get install -y zsh git vim \
		golang \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists

RUN locale-gen en_US.UTF-8

ADD loader /loader

ADD mkshell /mkshell
