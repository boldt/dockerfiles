# Simple Hello-World-Example with Node.js and Express.js

This Dockerfile is used to create the image [boldt/docker-express-example](https://hub.docker.com/r/boldt/docker-express-example/).

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
