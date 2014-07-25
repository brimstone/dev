FROM brimstone/ubuntu:14.04

RUN apt-get update \
	&& apt-get install -y zsh \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists
