#!/bin/bash
set -eux

declare -xr REPO_DIR="$(cd "$(dirname "$0")/.." || exit 1; pwd)"
declare -xr SCRIPTS_DIR="$(cd "$(dirname "$0")" || exit 1; pwd)"

declare -xr XDG_CACHE_HOME="${HOME}/.cache"
declare -xr XDG_CONFIG_HOME="${HOME}/.config"
declare -xr XDG_DATA_HOME="${HOME}/.local/share"
declare -xr XDG_STATE_HOME="${HOME}/.local/state"

declare -xr ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

declare -xr DENO_INSTALL="${XDG_DATA_HOME}/deno"
