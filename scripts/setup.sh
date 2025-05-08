#!/bin/bash
set -eux

source "$(dirname "$0")/shared.sh"

mkdir -p "${HOME}/.ssh"
chmod 700 "${HOME}/.ssh"

mkdir -p "${HOME}/.gnupg"
chmod 700 "${HOME}/.gnupg"

mkdir -p \
  "${XDG_CACHE_HOME}" \
  "${XDG_CONFIG_HOME}" \
  "${XDG_DATA_HOME}" \
  "${XDG_STATE_HOME}" \
  "${HOME}/.local/bin" \
  "${XDG_DATA_HOME}/zsh/completions" \
  "${XDG_STATE_HOME}/zsh"

for dir in "${REPO_DIR}/config/"*; do
  if [[ -d "${dir}" ]]; then
    ln -sfv "${dir}" "${XDG_CONFIG_HOME}/$(basename "${dir}")"
  fi
done

ln -sfv "${REPO_DIR}/.editorconfig" "${HOME}/.editorconfig"
ln -sfv "${ZDOTDIR}/.zshenv" "${HOME}/.zshenv"

/bin/bash "${SCRIPTS_DIR}/setup-apt.sh"
/bin/bash "${SCRIPTS_DIR}/setup-deno.sh"
/bin/bash "${SCRIPTS_DIR}/setup-homebrew.sh"
/bin/bash "${SCRIPTS_DIR}/setup-nix.sh"
