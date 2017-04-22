# Docker with Ubuntu 14.04 and Node 5.8.0

This Dockerfile is used to create the image [boldt/base-ubuntu_14.04.3-node_5.8.0](https://hub.docker.com/r/boldt/base-ubuntu_14.04.3-node_5.8.0/).

## Use this image

Add to your Dockerfile

```
FROM boldt/base-ubuntu_14.04.3-node_5.8.0:0.0.2
```

## Build and push

(For own documentation)

```
docker build -t boldt/base-ubuntu_14.04.3-node_5.8.0:0.0.2 .
docker push boldt/base-ubuntu_14.04.3-node_5.8.0:0.0.2
```

