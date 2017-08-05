# Dockerfile for boldt/base-ubuntu_nvm_node_npm_webpack

##############################################################################
# Install
# - ubuntu (14.04.5)
##############################################################################

FROM ubuntu:14.04.5

##############################################################################
# Replace shell with bash so we can source files
##############################################################################

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

##############################################################################
# Install dependencies from Ubuntu
##############################################################################

RUN apt-get update --fix-missing
RUN apt-get install -y curl build-essential
RUN apt-get install -y curl

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 5.8.0

##############################################################################
# Install:
# - nvm (0.332.1)
# - node (5.8.0)
# - npm (3.7.3)
#
# http://stackoverflow.com/questions/25899912/install-nvm-in-docker
##############################################################################

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
