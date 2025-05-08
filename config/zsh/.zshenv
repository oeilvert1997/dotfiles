typeset -xr LANG="en_US.UTF-8"

# XDG Base Directory
typeset -xr XDG_CACHE_HOME="${HOME}/.cache"
typeset -xr XDG_CONFIG_HOME="${HOME}/.config"
typeset -xr XDG_DATA_HOME="${HOME}/.local/share"
typeset -xr XDG_STATE_HOME="${HOME}/.local/state"

# zsh
typeset -xr ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

# Deno
typeset -xr DENO_INSTALL="${XDG_DATA_HOME}/deno"
typeset -xr DENO_INSTALL_ROOT="${DENO_INSTALL}"

# sheldon
typeset -xr SHELDON_CONFIG_DIR="${ZDOTDIR}/sheldon"
