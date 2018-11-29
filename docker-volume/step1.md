## Build image

We have setup a Dockerfile:

```
FROM alpine
RUN mkdir /config && touch /config/foo.yml
VOLUME /config
RUN touch /config/bar.yml
```

```docker build -t myimage . ```{{execute}}

## Create a volume

This volume will hold our application config.

`docker volume create my-app-config`{{execute}}


## List files in container

We instance a new container, mount the volume to and and have a look what is inside ```/config```-directory:

```
docker run -it --rm -v my-app-config:/config myimage sh -c "ls /config"
```{{execute}}

## Findings

* Volume is already populated with content!
* Volume does not have ```bar.yml``` included!

NOTE: Everything after the first usage of VOLUME will be stripped from the image.
