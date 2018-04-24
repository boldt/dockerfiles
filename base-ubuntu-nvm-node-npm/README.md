# Docker with Ubuntu + nvm + node + npm

* Docker image: [boldt/base-ubuntu-nvm-node-npm](https://hub.docker.com/r/boldt/base-ubuntu-nvm-node-npm/)
* Github Repo: [boldt/dockerfiles/base-ubuntu-nvm-node-npm](https://github.com/boldt/dockerfiles/tree/master/base-ubuntu-nvm-node-npm/).

The following versions are available:

| Tag                 | Ubuntu  | nvm     | node   | npm    | size   |
|-------------------- |-------- | ------- |------- |------- | ------ |
| `0.0.1`             | 14.04.5 | 0.33.2  | 5.8.0  | 3.7.3  | 390 MB |
| `0.0.2`             | 14.04.5 | 0.33.2  | 5.8.0  | 3.7.3  | 237 MB |
| `0.0.3` (`latest`)  | 16.04   | 0.33.8  | 8.11.1 | 5.6.0  | 185 MB |

## Use this image

Add to your Dockerfile

```
FROM boldt/base-ubuntu-nvm-node-npm
```

## Build and push to hub.docker.com

(For own documentation)

```
# Build
docker build -t boldt/base-ubuntu-nvm-node-npm:0.0.3 .

# Detect versions
docker run --rm -it boldt/base-ubuntu-nvm-node-npm:0.0.3 /bin/bash
  node --version
  npm --version
  nvm --version

# Tag and Push
docker tag boldt/base-ubuntu-nvm-node-npm:0.0.3 boldt/base-ubuntu-nvm-node-npm:latest
docker push boldt/base-ubuntu-nvm-node-npm:0.0.3
docker push boldt/base-ubuntu-nvm-node-npm:latest
```
