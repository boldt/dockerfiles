##############################################################################
# Replace shell with bash so we can source files
##############################################################################

FROM ubuntu:14.04.3

##############################################################################
# Replace shell with bash so we can source files
##############################################################################
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

##############################################################################
# Install dependencies from Ubuntu
##############################################################################

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update --fix-missing
RUN apt-get install -y curl build-essential

##############################################################################
# Install nvm, node and npm
# http://stackoverflow.com/questions/25899912/install-nvm-in-docker
##############################################################################

# Required by webrtc-native
ENV NODE_VERSION 5.8.0
ENV NVM_DIR /usr/local/nvm

RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

RUN node --version
RUN npm --v

