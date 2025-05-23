#!/bin/bash
set -eux

source "$(dirname "$0")/shared.sh"

command -v brew &>/dev/null && exit 0

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> "${HOME}/.bashrc"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> "${XDG_CONFIG_HOME}/zsh/.zshrc"

echo "Updating Homebrew..."
# brew update
