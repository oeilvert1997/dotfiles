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
