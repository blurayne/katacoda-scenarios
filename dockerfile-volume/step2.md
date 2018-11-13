
## Create another file in volume

```docker run -it --rm -v my-app-config:/app/config 
myimage sh -c "touch /config/qux.yml"```

Works as expected.

