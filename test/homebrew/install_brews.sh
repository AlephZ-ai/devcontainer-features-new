#!/usr/bin/env bash
#shellcheck source=/dev/null
#example=https://github.com/devcontainers/features/blob/main/test/azure-cli/test.sh
#example=https://github.com/meaningful-ooo/devcontainer-features/blob/main/test/homebrew/test.sh
set -e
BREW_PREFIX="${BREW_PREFIX:-"/home/linuxbrew/.linuxbrew"}"

source /etc/os-release
eval "$("$BREW_PREFIX/bin/brew" shellenv)"

# Import test library for `check` command
echo "Installing test library..."
source dev-container-features-test-lib


# Extension-specific tests
check "mkcert installed" brew list --formula mkcert
check "mkcert --version" mkcert --version

# Report result
echo "All tests passed!"
reportResults
