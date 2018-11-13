
## Create another file in volume

```docker run -it --rm -v my-app-config:/config 
myimage sh -c "touch /config/qux.yml"```{{execute}}

Works as expected.

