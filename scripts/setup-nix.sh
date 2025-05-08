#!/bin/bash
set -eux

source "$(dirname "$0")/shared.sh"

command -v nix &>/dev/null && exit 0

mkdir -p "${XDG_CONFIG_HOME}/nix"
echo "extra-experimental-features = flakes nix-command" > "${XDG_CONFIG_HOME}/nix/nix.conf"

echo "Installing Nix..."
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --no-daemon

if [[ -f "${HOME}/.nix-profile/etc/profile.d/nix.sh" ]]; then
  echo 'source "${HOME}/.nix-profile/etc/profile.d/nix.sh"' >> "${ZDOTDIR}/.zshrc"
fi
