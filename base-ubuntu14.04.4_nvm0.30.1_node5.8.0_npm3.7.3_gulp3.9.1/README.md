# Docker with Ubuntu + nvm 0.30.1 + Node 5.8.0 + npm3.7.3 + gulp3.9.1

This Dockerfile is used to create the image [boldt/base-ubuntu14.04.4_nvm0.30.1_node5.8.0_npm3.7.3_gulp3.9.1](https://hub.docker.com/r/boldt/base-ubuntu14.04.4_nvm0.30.1_node5.8.0_npm3.7.3_gulp3.9.1/).

## Use this image

Add to your Dockerfile

```
FROM boldt/base-ubuntu14.04.4_nvm0.30.1_node5.8.0_npm3.7.3_gulp3.9.1
```

## Build and push

(For own documentation)

```
docker build -t base-ubuntu14.04.4_nvm0.30.1_node5.8.0_npm3.7.3_gulp3.9.1:0.0.1 .
docker push boldt/base-ubuntu14.04.4_nvm0.30.1_node5.8.0_npm3.7.3_gulp3.9.1:0.0.1
```
