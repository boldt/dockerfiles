# Simple Hello-World-Example with Node.js and Express.js

[![Gitlab](https://img.shields.io/static/v1.svg?label=Get%20the%20source%20code%20on&message=Github&color=555&style=popout&logo=github)](https://github.com/boldt/dockerfiles/tree/master/docker-express-example/)
[![Docker Hub](https://img.shields.io/static/v1.svg?label=Get%20the%20container%20on&message=Docker%20Hub&color=555&style=popout&logo=docker)](https://hub.docker.com/r/boldt/docker-express-example/)
[![Docker Pulls](https://img.shields.io/docker/pulls/boldt/docker-express-example.svg)](https://hub.docker.com/r/boldt/docker-express-example/)

## Description

This docker image contains a webserver build with ode.js and Express.js. It has a simple endpoint which sais hello world.

## Versions

> TODO

## Use this image

```
# Run on port 5000 (with env var)
EXTERNAL_PORT=5000
docker run --rm -d -p $EXTERNAL_PORT:3000 -e PORT=$EXTERNAL_PORT --name docker-express-example boldt/docker-express-example:latest

# Use a log file and expose the log-folder
docker run --rm -d -p $EXTERNAL_PORT:3000 -e PORT=$EXTERNAL_PORT --name docker-express-example -e LOG=/log/docker-express-example.txt -v /tmp/log/:/log/ boldt/docker-express-example:latest

# See the logs
tail -f /tmp/log/docker-express-example.txt

# Open http://HOST:5000
# Stop/Kill the container
docker stop docker-express-example
docker kill docker-express-example
```

Or add to your Dockerfile

```
FROM boldt/docker-express-example:latest
```

## Build & Push

(For own documentation)

```
VERSION=0.0.4
docker build -t boldt/docker-express-example:latest .
docker tag boldt/docker-express-example:latest boldt/docker-express-example:$VERSION
docker push boldt/docker-express-example:latest
docker push boldt/docker-express-example:$VERSION
```
