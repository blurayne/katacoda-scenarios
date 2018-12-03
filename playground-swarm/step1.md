
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
 
 `token=$(docker -H  [[HOST1_IP]]:2345 swarm join-token -q worker) && docker swarm join  [[HOST1_IP]]:2377 --token $token`{{execute HOST2}} 


 List nodes

Host 1 [`[[HOST1_IP]`]([[HOST1_IP]])
Host 2 [`[[HOST2_IP]]`]([[HOST2_IP]])
 
 `docker node ls`{{execute HOST1}}

[Access port 8080](https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/)


## Note

You cannot destroy anything - try ```rm -f /``` and restart containers!