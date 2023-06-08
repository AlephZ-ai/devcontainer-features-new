#!/usr/bin/env zsh
# shellcheck shell=bash
# init
set -euo pipefail
# Make trusted root CA then install and trust it
mkcert -install
dotnet dev-certs https --trust
