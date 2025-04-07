#!/bin/bash
set -x

declare -xr XDG_CACHE_HOME="${XDG_CACHE_HOME:-${HOME}/.cache}"
declare -xr XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
declare -xr XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
declare -xr XDG_STATE_HOME="${XDG_STATE_HOME:-${HOME}/.local/state}"

mkdir -p ${XDG_CACHE_HOME} ${XDG_CONFIG_HOME} ${XDG_DATA_HOME} ${XDG_STATE_HOME}
