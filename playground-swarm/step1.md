
## General

Use ```vi```{{execute}}, ```nano```{{execute}} or ```micro```{{execute}} to edit files.

Use ```docker help```{{execute}} or ```man docker <command>```{{execute}} for docs.

Use ```ssh root@host01```{{execute}} to login to *host01* – if needed!

Use ```cd /home/scrapbook```{{execute}} to find other scenarios.

Use ```make```{{execute}} followed by ```<tab>``` to call targets.


## Swarm

 Init Swarm
 
 `docker swarm init`{{execute HOST1}}
 
 Join Swarm
 
 `token=$(docker -H  172.17.0.22:2345 swarm join-token -q worker) && docker swarm join  172.17.0.22:2377 --token $token`{{execute HOST2}} 

 List nodes
 
 [[HOST_SUBDOMAIN]]-8500-[[KATACODA_HOST]]
 [[HOST1_SUBDOMAIN]]-8500-[[KATACODA_HOST1]]
 [[HOST2_SUBDOMAIN]]-8500-[[KATACODA_HOST2]]

 `docker node ls`{{execute HOST1}}

[Access port 8080](https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/)


## Note

You cannot destroy anything - try ```rm -f /``` and restart containers!