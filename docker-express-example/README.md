# Simple Docker Example with Node 6.10.0 and Express.js

This Dockerfile is used to create the image [boldt/docker-express-example](https://hub.docker.com/r/boldt/docker-express-example/).

## Use this image

Run:

```
docker pull boldt/docker-express-example:latest

# Run on port 3000
docker run --rm -d -p 3000:3000 --name docker-express-example boldt/docker-express-example:latest
docker stop docker-express-example:latest

# Run on port 5000 (with env var)
EXTERNAL_PORT=5000
docker run --rm -d -p $EXTERNAL_PORT:3000 -e PORT=$EXTERNAL_PORT --name docker-express-example boldt/docker-express-example:latest
docker stop docker-express-example:latest
```

Or add to your Dockerfile

```
FROM boldt/docker-express-example:latest
```

## Push

(For own documentation)

```
VERSION=0.0.2
docker tag boldt/docker-express-example:latest boldt/docker-express-example:$VERSION
docker push boldt/docker-express-example:$VERSION
```

