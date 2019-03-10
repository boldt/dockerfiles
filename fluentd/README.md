# fluentd 

* Docker image: [boldt/fluentd](https://hub.docker.com/r/boldt/fluentd/)
* Github Repo: [boldt/dockerfiles/fluentd](https://github.com/boldt/dockerfiles/tree/master/fluentd/).

# Desciption

Derived from the default `fluent/fluentd` container:

* With the plugin `fluent-plugin-elasticsearch`

# Build

```bash
docker build -f Dockerfile.fluentd -t boldt/fluentd .
```
