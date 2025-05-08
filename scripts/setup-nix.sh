#!/bin/bash
set -eux

source "$(dirname "$0")/shared.sh"

command -v nix &>/dev/null && exit 0

echo "Installing Nix..."
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
