typeset -gU PATH path
typeset -gU FPATH fpath

path=(
  "/usr/local/bin"(N-/)
  "/usr/bin"(N-/)
  "/bin"(N-/)
  "/usr/local/sbin"(N-/)
  "/usr/sbin"(N-/)
  "/sbin"(N-/)
)

path=(
  "${HOME}/.local/bin"(N-/)
  "${DENO_INSTALL}/bin"(N-/)
  "${path[@]}"
)

fpath=(
  "${XDG_DATA_HOME}/zsh/completions"(N-/)
  "${fpath[@]}"
)

source() {
  local input="${1}"
  local cache="${input}.zwc"

  if [[ -L "${input}" || ! -w "$(dirname "${cache}")" ]]; then
    builtin source "${input}"
    return
  fi

  if [[ ! -f "${cache}" || "${input}" -nt "${cache}" ]]; then
    echo "Compiling ${input}..."
    zcompile "${input}"
  fi
  builtin source "${input}"
}

sheldon::load() {
  local plugins_file="${SHELDON_CONFIG_DIR}/plugins.toml"
  local cache_file="${XDG_CACHE_HOME}/sheldon/sheldon_cache"
  if [[ ! -f "${cache_file}" || "${plugins_file}" -nt "${cache_file}" ]]; then
    mkdir -p "${XDG_CACHE_HOME}/sheldon"
    sheldon source > "${cache_file}"
  fi
  builtin source "${cache_file}"
}
