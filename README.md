# docker-<PROJECT_NAME>

[![Drone (cloud)](https://img.shields.io/drone/build/jee-r/docker-<PROJECT_NAME>?&style=flat-square)](https://cloud.drone.io/jee-r/docker-<PROJECT_NAME>)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/j33r/<PROJECT_NAME>?style=flat-square)](https://microbadger.com/images/j33r/<PROJECT_NAME>)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/j33r/<PROJECT_NAME>?style=flat-square)](https://microbadger.com/images/j33r/<PROJECT_NAME>)
[![Docker Pulls](https://img.shields.io/docker/pulls/j33r/<PROJECT_NAME>?style=flat-square)](https://hub.docker.com/r/j33r/<PROJECT_NAME>)
[![DockerHub](https://shields.io/badge/Dockerhub-j33r/php%E2%88%92fpm-%232496ED?logo=docker&style=flat-square)](https://hub.docker.com/r/j33r/<PROJECT_NAME>)

A docker image for [<PROJECT_NAME>](<PROJECT_URL>) ![<PROJECT_NAME>'s logo](<PROJECT_LOGO_URL)

# Supported tags

| Tags | <RESERVED_1> | <RESERVED_2> | Size | Layers |
|-|-|-|-|-|
| `latest`, `stable`, `master` | <RESERVED_1> | <RESERVED_2> | ![](https://img.shields.io/docker/image-size/j33r/<PROJECT_NAME>/latest?style=flat-square) | ![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/j33r/<PROJECT_NAME>/latest?style=flat-square) |
| `dev` | <RESERVED_1> | <RESERVED_2> | ![](https://img.shields.io/docker/image-size/j33r/<PROJECT_NAME>/dev?style=flat-square) | ![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/j33r/<PROJECT_NAME>/dev?style=flat-square) |

# What is <PROJECT_NAME>?

From [<PROJECT_NAME>](<PROJECT_URL>):

> <PROJECT_DESCRIPTION>

# How to use these images

```bash
docker run \
    --detach \
    --interactive \
    --name <PROJECT_NAME> \
    --user $(id -u):$(id -g)
    --env TZ=Europe/Paris
    --volume /etc/localtime:/etc/localtime:ro
    j33r/<PROJECT_NAME>:latest
```    

## Volume mounts


```bash
docker run \
    --detach \
    --interactive \
    --name <PROJECT_NAME> \
    --user $(id -u):$(id -g) \
    --volume /path/to/your/<VOLUME>:<VOLUME> \
    j33r/<PROJECT_NAME>:latest
```

You should create directory before run the container otherwise directories are created by the docker deamon and owned by the root user

## Environment variables

To change the timezone of the container set the `TZ` environment variable. The full list of available options can be found on [Wikipedia](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).

You can also set the `HOME` environment variable this is usefull to get in the right directory when you attach a shell in your docker container.


## Docker Compose

[`docker-compose`](https://docs.docker.com/compose/) can help with defining the `docker run` config in a repeatable way rather than ensuring you always pass the same CLI arguments.

Here's an example `docker-compose.yml` config:

```yaml
version: "3"

services:
  php:
    image: j33r/<PROJECT_NAME>:latest    
    user: "${UID:-1000}:${GID:-1000}"
    restart: unless-stopped
    environment:
        - HOME=/app
        - TZ=Europe/Paris
    volumes:
        - /etc/localtime:/etc/localtime:ro
```

# License

This project is under the [GNU Generic Public License v3](https://github.com/jee-r/docker-<PROJECT_NAME>/blob/master/LICENSE) to allow free use while ensuring it stays open.

# Credits

<CREDIT>
