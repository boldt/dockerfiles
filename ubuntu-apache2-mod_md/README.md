# Ubuntu with apache2 + mod_md

[![Gitlab](https://img.shields.io/static/v1.svg?label=Get%20the%20source%20code%20on&message=Github&color=555&style=popout&logo=github)](https://github.com/boldt/dockerfiles/tree/master/ubuntu-apache2-mod_md/)
[![Docker Hub](https://img.shields.io/static/v1.svg?label=Get%20the%20container%20on&message=Docker%20Hub&color=555&style=popout&logo=docker)](https://hub.docker.com/r/boldt/ubuntu-apache2-mod_md/)
[![Docker Pulls](https://img.shields.io/docker/pulls/boldt/ubuntu-apache2-mod_md.svg)](https://hub.docker.com/r/boldt/ubuntu-apache2-mod_md/)

## Description

This image contains the Apache web server with the mod_md plugin, which can be used to derive Let's Encrypt certificates.

## Versions

| Tag                 | Ubuntu  | apache  | mod_md | Image Size   |
|-------------------- |-------- | ------- |------- | ------------ |
| `0.0.2` (`latest`)  | 14.04.5 | 2.4.34  | 1.1.16 | 434 MB       |
| `0.0.1`             | 14.04.5 | 2.4.29  | 1.0.3  | 431 MB       |


## Use this image

Pull the image:

```
docker pull boldt/ubuntu-apache2-mod_md
```

Use the image (remark the placeholder `PATH`):

```
docker run \
    --rm \
    -d \
    --name ubuntu-apache2-mod_md \
    -p 80:80 \
    -p 443:443 \
    -v /PATH/var/www/test.dennis-boldt.de/:/var/www/test.dennis-boldt.de/ \
    -v /PATH/etc/apache2/sites-enabled/test.dennis-boldt.de.conf:/etc/apache2/sites-enabled/test.dennis-boldt.de.conf \
    -v /PATH/md/:/etc/apache2/md/ \
    boldt/ubuntu-apache2-mod_md
```

An example configuration for `test.dennis-boldt.de.conf` can be found on github (see above).

### Cronjob

Even the certs are renewed automatically, the configuration still needs to be reloaded manually. We do this with a cronjob (`crontab -e`):

```
# Runs the reload each sunday at midnight
0 0 * * 0 docker exec -it ubuntu-apache2-mod_md /etc/init.d/apache2 reload
```

## Build and push


(For own documentation)

```
docker build -t boldt/ubuntu-apache2-mod_md .

# Tag
docker tag boldt/ubuntu-apache2-mod_md boldt/ubuntu-apache2-mod_md:0.0.2

# Push
docker push boldt/ubuntu-apache2-mod_md:latest
docker push boldt/ubuntu-apache2-mod_md:0.0.2
```