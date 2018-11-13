## Dockerfile

We have setup a Dockerfile.

```
FROM alpine
RUN mkdir /config && touch /config/foo.yml
VOLUME /config
RUN touch /config/bar.yml
```

- creates ```/config/foo.yml```
- ```VOLUME``` command
- tries to add another config ```/config/bar.yml``` 


## Build the image

```docker build -t myimage . ```{{execute}}

## Create a volume ```my-app-config```

This volume will hold our application config.

`docker volume create my-app-config`{{execute}}


## Run container with volume and view 

```
docker run -it --rm -v my-app-config:/config myimage sh -c "ls /config"
settings.yml
```{{execute}}

*…and it has already content!*
*…but no ```bar.yml``` present!*
