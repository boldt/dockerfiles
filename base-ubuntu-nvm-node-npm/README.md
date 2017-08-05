# Docker with Ubuntu + nvm + node + npm

* Docker image: [boldt/base-ubuntu-nvm-node-npm](https://hub.docker.com/r/boldt/base-ubuntu-nvm-node-npm/)
* Github Repo: [boldt/dockerfiles/base-ubuntu-nvm-node-npm](https://github.com/boldt/dockerfiles/tree/master/base-ubuntu-nvm-node-npm/).

The following versions are available:

| Tag                 | Ubuntu  | nvm     | node  | npm    |
|-------------------- |-------- | ------- |------ |------- |
| `0.0.1` (`latest`)  | 14.04.5 | 0.33.2  | 5.8.0 | 3.7.3  |

## Use this image

Add to your Dockerfile

```
FROM boldt/base-ubuntu-nvm-node-npm
```

## Build and push


(For own documentation)

```
sudo docker build -t boldt/base-ubuntu-nvm-node-npm:0.0.1 .
sudo docker tag boldt/base-ubuntu-nvm-node-npm:0.0.1 boldt/base-ubuntu-nvm-node-npm:latest
sudo docker push boldt/base-ubuntu-nvm-node-npm:0.0.1
sudo docker push boldt/base-ubuntu-nvm-node-npm:latest
```
