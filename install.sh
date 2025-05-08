#!/bin/bash
set -eux

declare -r INSTALL_DIR="${HOME}/repos/github.com/oeilvert1997/dotfiles"

if [ -d "${INSTALL_DIR}" ]; then
  echo "Updating dotfiles..."
  git -C "${INSTALL_DIR}" pull
else
  echo "Installing dotfiles..."
  git clone https://github.com/oeilvert1997/dotfiles "${INSTALL_DIR}"
fi

/bin/bash "${INSTALL_DIR}/scripts/setup.sh"
