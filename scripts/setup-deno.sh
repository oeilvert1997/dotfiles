#!/bin/bash
set -eux

source "$(dirname "$0")/shared.sh"

command -v deno &>/dev/null && exit 0

echo "Installing Deno..."
curl -fsSL https://deno.land/install.sh | sh

echo "Installing Deno completions..."
"${DENO_INSTALL}/bin/deno" completions zsh \
  > "${XDG_DATA_HOME}/zsh/completions/_deno"
