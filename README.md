# homelab-demo

Self Hosted Services Demo via Docker Compose.

## Services

- [BentoPDF](./svc/bentopdf/README.md)
- [Jellyfin](./svc/jellyfin/README.md)
- [Syncthing](./svc/syncthing/README.md)

## Dependencies

- [Docker](https://www.docker.com/) /
  [Podman](https://github.com/podman-container-tools/podman) +
  [Podman Compose](https://github.com/containers/podman-compose)
- [Just](https://github.com/casey/just) (Optional)

### Development

- [yq](https://github.com/mikefarah/yq) (linting)
- [uv](https://github.com/astral-sh/uv) (linting)

## Setup

### Secrets

> [!IMPORTANT]
> This Repository includes a [.config/example.secrets.env](./.config/examplesecrets.env)
file. Copy this file as `.config/secrets.env` and fill out the necessary
variables before starting the services.

## Run the services

The entry point is the [justfile](./justfile). The service are configured via
the environment files in the [env](./env) directory. The `justfile` is
automatically loading the necessary variables at runtime. This is a security
measure to for giving secrets to the docker compose cli. This also makes it
easier for variables that are used by multiple services.

> [!NOTE]
> It is possible to not use the `justfile` and only use the `docker compose cli`,
but the secrests variables from
[.config/examples.secrests.env](./.config/example.secrets.env) must be set into
your shell.
