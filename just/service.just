# Interact with the compose cli
[group("service")]
[working-directory("svc")]
compose *ARGS:
    @docker compose {{ ARGS }}

# Show the configuration of the service
[group("service")]
[working-directory("svc")]
config *SVC:
    @docker compose config {{ SVC }}

# Dry-run the services
[group("service")]
[working-directory("svc")]
dry:
    @docker compose --dry-run up --detach

# Start given services
[group("service")]
[working-directory("svc")]
up *SRV:
    @docker compose up --detach --timeout 300 {{ SRV }}

# Stop given services
[group("service")]
[working-directory("svc")]
down *SRV:
    @docker compose down {{ SRV }}

# Show the logs of given services
[group("service")]
[working-directory("svc")]
logs *SRV:
    @docker compose logs --follow {{ SRV }}

# Restart given services
[group("service")]
[working-directory("svc")]
restart *SRV:
    @docker compose restart {{ SRV }}
