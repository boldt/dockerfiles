# Ubuntu with nvm + node + npm

[![Gitlab](https://img.shields.io/static/v1.svg?label=Get%20the%20source%20code%20on&message=Github&color=555&style=flat&logo=github)](https://github.com/boldt/dockerfiles/tree/master/base-ubuntu-nvm-node-npm/)
[![Docker Hub](https://img.shields.io/static/v1.svg?label=Get%20the%20container%20on&message=Docker%20Hub&color=555&style=flat&logo=docker)](https://hub.docker.com/r/boldt/base-ubuntu-nvm-node-npm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/boldt/base-ubuntu-nvm-node-npm.svg)](https://hub.docker.com/r/boldt/base-ubuntu-nvm-node-npm/)

## Description

This docker image is the default Ubuntu image with the Node Version Manager (nvm), node and the Node Package Manager.

## Versions

| Tag                 | Ubuntu  | nvm     | node    | npm    |
|-------------------- |-------- | ------- |-------- |------- |
| `0.0.6` (`latest`)  | 18.04   | 0.34.0  | 10.15.3 | 6.4.1  |
| `0.0.5`             | 18.04   | 0.33.11 | 10.9.0  | 6.2.0  |
| `0.0.4`             | 18.04   | 0.33.11 | 10.5.0  | 6.1.0  |
| `0.0.3`             | 16.04   | 0.33.8  | 8.11.1  | 5.6.0  |
| `0.0.2`             | 14.04.5 | 0.33.2  | 5.8.0   | 3.7.3  |
| `0.0.1`             | 14.04.5 | 0.33.2  | 5.8.0   | 3.7.3  |

## Use this image

Add to your Dockerfile

```
FROM boldt/base-ubuntu-nvm-node-npm
```

## Build and push to hub.docker.com

(For own documentation)

```
# Build
docker build -t boldt/base-ubuntu-nvm-node-npm:0.0.5 .

# Detect versions
docker run --rm -it boldt/base-ubuntu-nvm-node-npm:0.0.5 /bin/bash
  node --version
  npm --version
  nvm --version
```

# Tag and Push

Automatic build by Docker Hub, then:

```
docker pull boldt/base-ubuntu-nvm-node-npm
docker tag boldt/base-ubuntu-nvm-node-npm:latest boldt/base-ubuntu-nvm-node-npm:0.0.6
docker push boldt/base-ubuntu-nvm-node-npm:0.0.6
docker push boldt/base-ubuntu-nvm-node-npm:latest
```
