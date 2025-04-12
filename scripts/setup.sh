#!/bin/bash
set -eux

source "$(dirname "$0")/shared.sh"

if [[ ! -d "${HOME}/.ssh" ]]; then
  mkdir -p "${HOME}/.ssh"
  chmod 700 "${HOME}/.ssh"
fi

if [[ ! -d "${HOME}/.gnupg" ]]; then
  mkdir -p "${HOME}/.gnupg"
  chmod 700 "${HOME}/.gnupg"
fi

mkdir -p \
  "${XDG_CACHE_HOME}" \
  "${XDG_CONFIG_HOME}" \
  "${XDG_DATA_HOME}" \
  "${XDG_STATE_HOME}" \
  "${HOME}/.local/bin" \
  "${XDG_DATA_HOME}/zsh/completions"

for file in "${REPO_DIR}/config/"*; do
  ln -sfv "${file}" "${XDG_CONFIG_HOME}"
done

ln -sfv "${REPO_DIR}/.editorconfig" "${HOME}/.editorconfig"
ln -sfv "${XDG_CONFIG_HOME}/zsh/.zshenv" "${HOME}/.zshenv"
