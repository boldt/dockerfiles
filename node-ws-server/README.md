# Use

```bash
docker pull boldt/node-ws-server:0.0.1

docker run \
  --rm \
  -d \
  -v "/home/boldt/git/dockerfiles/node-ws-server/cert.pem:/app/cert.pem" \
  -v "/home/boldt/git/dockerfiles/node-ws-server/key.pem:/app/key.pem" \
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
