#!/bin/bash
set -eux

source "$(dirname "$0")/shared.sh"

command -v apt-get &>/dev/null || exit 0

sudo /bin/bash "${XDG_CONFIG_HOME}/apt/install.sh"
