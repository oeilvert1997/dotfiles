#!/bin/bash
set -x

declare -xr SCRIPTS_DIR="$(cd "$(dirname "$0")" || exit 1; pwd)"
declare -xr REPO_DIR="$(cd "$(dirname "$0")/.." || exit 1; pwd)"

declare -xr XDG_CACHE_HOME="${XDG_CACHE_HOME:-${HOME}/.cache}"
declare -xr XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
declare -xr XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
declare -xr XDG_STATE_HOME="${XDG_STATE_HOME:-${HOME}/.local/state}"
