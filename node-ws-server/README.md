# A simple WebSocket server based on node.js

[![Gitlab](https://img.shields.io/static/v1.svg?label=Get%20the%20source%20code%20on&message=Github&color=555&style=flat&logo=github)](https://github.com/boldt/dockerfiles/tree/master/node-ws-server/)
[![Docker Hub](https://img.shields.io/static/v1.svg?label=Get%20the%20container%20on&message=Docker%20Hub&color=555&style=flat&logo=docker)](https://hub.docker.com/r/boldt/node-ws-server/)
[![Docker Pulls](https://img.shields.io/docker/pulls/boldt/node-ws-server.svg)](https://hub.docker.com/r/boldt/node-ws-server/)

## Description

> TODO

## Versions

> TODO

## How to use this image

```bash
docker pull boldt/node-ws-server:0.0.1

docker run \
  --rm \
  -v "/docker/certbot/etc/letsencrypt/archive/docker.dennis-boldt.de/cert4.pem:/app/cert.pem" \
  -v "/docker/certbot/etc/letsencrypt/archive/docker.dennis-boldt.de/privkey4.pem:/app/key.pem" \
  --name node-ws-server \
  -p 12345:8080 \
  boldt/node-ws-server:0.0.1

docker logs -f node-ws-server
```

# Build and push

```bash
docker build -t boldt/node-ws-server:0.0.1 .
docker push boldt/node-ws-server:0.0.1
```

# Sources

* https://github.com/websockets/ws
* https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
