set unstable
set lists

set dotenv-filename := ["env/versions.env", "env/global.env", "env/network.env", ".config/secrets.env"]

_default:
    @just --list

import "just/development.just"
import "just/docker.just"
import "just/service.just"
