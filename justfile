set dotenv-filename := ".config/.env"

_default:
    @just --list

import "just/docker.just"
import "just/service.just"
