IMAGE=myimage:latest
CONTAINER=mycontainer

# Build the image
build:
	docker build -t $(IMAGE) .
	# docker-compose build

# Run the image and remove
run-attached:
	docker run -it --rm --name $(CONTAINER) $(IMAGE) 

# Run deamonized and remove
run-detached:
	docker run -d --rm --name $(CONTAINER) $(IMAGE) 

# Execute shell with new container from image
shell-image:
	docker run -it --rm $(IMAGE) sh -c '"$$(getent passwd $$(whoami) | cut -d: -f7)"'

# Execute shell within running containe
shell-container:
	docker exec -it $(CONTAINER) sh -c '$$(getent passwd $$(whoami) | cut -d: -f7)'

# Start docker compose
compose-up:
	docker-compose up

# Start docker compose
compose-kill:
	docker-compose kill

# Stop and cleanup everything
clean:
	docker rm -f $$(docker ps -a -q)
	docker system prune -af

