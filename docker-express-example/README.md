# Simple Docker Example with Node 6.10.0 and Express.js

This Dockerfile is used to create the image [boldt/docker-express-example](https://hub.docker.com/r/boldt/docker-express-example/).

All logs are written to `/log/app.log`, thue we can simply mount the `/log/` folder to the host system folder (in this exampke `/tmp/log/`)!

## Use this image

```
# Run on port 5000 (with env var)
EXTERNAL_PORT=5000
docker run --rm -d -p $EXTERNAL_PORT:3000 -e PORT=$EXTERNAL_PORT --name docker-express-example boldt/docker-express-example:latest
# Expose the /log folder 
docker run --rm -d -p $EXTERNAL_PORT:3000 -e PORT=$EXTERNAL_PORT --name docker-express-example -v /tmp/log/:/log/ boldt/docker-express-example:latest
# See the logs
tail -f /tmp/log/app.log
# Open http://HOST:5000
# Stop the container
docker stop docker-express-example:latest
```

Or add to your Dockerfile

```
FROM boldt/docker-express-example:latest
```

## Build & Push

(For own documentation)

```
VERSION=0.0.3
docker build -t boldt/docker-express-example:latest .
docker tag boldt/docker-express-example:latest boldt/docker-express-example:$VERSION
docker push boldt/docker-express-example:latest
docker push boldt/docker-express-example:$VERSION
```
