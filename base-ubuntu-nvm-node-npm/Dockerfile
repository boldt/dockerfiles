# Dockerfile for boldt/base-ubuntu-nvm-node-npm

##############################################################################
# Install Ubuntu
##############################################################################

FROM ubuntu:16.04

##############################################################################
# Replace shell with bash so we can source files
##############################################################################

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

##############################################################################
# Install dependencies from Ubuntu
##############################################################################

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 8.11.1

RUN apt-get update --fix-missing && \
	apt-get install -y curl && \
	##############################################################################
	# Install: nvm, node and npm
	# @see: http://stackoverflow.com/questions/25899912/install-nvm-in-docker
	##############################################################################
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && \
	source $NVM_DIR/nvm.sh && \
	nvm install $NODE_VERSION && \
	nvm alias default $NODE_VERSION && \
	nvm use default && \
	nvm cache clear && \
	apt-get remove -y curl && \
	rm -rf /var/lib/apt/lists/*

ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
