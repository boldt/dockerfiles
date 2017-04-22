# Simple Docker Example with Node 6.10.0 and Express.js

This Dockerfile is used to create the image [boldt/docker-express-example](https://hub.docker.com/r/boldt/docker-express-example/).

## Use this image

Run:

```
docker pull boldt/docker-express-example:0.0.1
docker run -d -p 3000:3000 --name docker-express-example boldt/docker-express-example:0.0.1
```

Or add to your Dockerfile

```
FROM boldt/docker-express-example:0.0.1
```

## Build and push

(For own documentation)

```
docker build -t boldt/docker-express-example:0.0.1 .
docker push boldt/base-ubuntu_14.04.3-node_5.8.0:0.0.2
```

