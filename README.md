# homelab-demo
Self Hosted Services Demo via Docker Compose.

## Dependencies
- [Docker](https://www.docker.com/)
- [Just](https://github.com/casey/just)

## Setup
The entry point is the [justfile](./justfile). The service are configured via
the [.config/.env](./.config/.env) file. The `justfile` is automatically loading
the necessary variables at runtime. This is a security measure to for giving
secrets to the docker compose cli. This also makes it easier for variables that
are used by multiple services.

> [!IMPORTANT]
> This Repository includes a [.config/example.env](./.config/example.env) file.
Copy this file, rename it to `.env` and fill out the necessary variables before
starting the services.

## Services
- [BentoPDF](./svc/bentopdf/README.md)
- [Jellyfin](./svc/jellyfin/README.md)
