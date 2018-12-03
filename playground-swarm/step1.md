
## General

Use ```vi```{{execute}}, ```nano```{{execute}} or ```micro```{{execute}} to edit files.

Use ```docker help```{{execute}} or ```man docker <command>```{{execute}} for docs.

Use ```ssh root@host01```{{execute}} to login to *host01* – if needed!

Use ```cd /home/scrapbook```{{execute}} to find other scenarios.

Use ```make```{{execute}} followed by ```<tab>``` to call targets.


## Swarm

Use `docker swarm init`{{execute HOST1}} to init swarm

Use `token=$(docker -H 172.17.0.43:2345 swarm join-token -q worker) && docker swarm join 172.17.0.43:2377 --token $token`{{execute HOST2}} to join swarm


## Note

You cannot destroy anything - try ```rm -f /``` and restart containers!