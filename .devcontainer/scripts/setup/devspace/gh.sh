#!/usr/bin/env zsh
# shellcheck shell=bash
# init
set -euo pipefail
# Adding GH .ssh known hosts
mkdir -p "$HOME/.ssh/"
touch "$HOME/.ssh/known_hosts"
if ! grep -q "^github.com " "$HOME/.ssh/known_hosts"; then
  ssh-keyscan github.com >>"$HOME/.ssh/known_hosts"
fi

# Configure git
git config --global advice.detachedHead false
git config pull.rebase true
# Configure GH
gh config set -h github.com git_protocol https
