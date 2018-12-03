FROM alpine:latest

RUN \
    echo -e "#!/bin/ash\nfor i in 1 2 3 4 5 6 7 8 9 stop; do echo \$i; sleep 1; done" > /usr/local/bin/container-start \
    && chmod a+x /usr/local/bin/container-start

CMD ["/usr/local/bin/container-start"]
