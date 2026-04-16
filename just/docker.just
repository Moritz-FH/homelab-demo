# Inspect docker item
[group("docker")]
[working-directory("svc")]
inspect *ARG:
    @docker inspect {{ ARG }}

# List all running containers
[group("docker")]
[working-directory("svc")]
ct:
    @docker container \
        ls \
        --all \
        --format "table {{{{.Names}}\t{{{{.Command}}\t{{{{.Status}}\t{{{{.Image}}\t{{{{.ID}}"

# List all images
[group("docker")]
[working-directory("svc")]
img:
    @docker image ls

# List all volumes
[group("docker")]
[working-directory("svc")]
vol:
    @docker volume ls

# List all networks
[group("docker")]
[working-directory("svc")]
net:
    @docker network ls

# Cleanup the docker files
[group("docker")]
[working-directory("svc")]
prune:
    @docker image prune --force
    @docker volume prune --force
