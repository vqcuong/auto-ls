auto-ls() {
	emulate -L zsh
	echo
  isdone=0
  if command -v exa &>/dev/null; then
    exa --icons --color=always --group --time-style=long-iso --all --group-directories-first
    return
  fi
  if command -v $HOMEBREW_PREFIX/bin/exa &>/dev/null; then
    exa --icons --color=always --group --time-style=long-iso --all --group-directories-first
  fi
  if command -v colorls &>/dev/null; then
    colorls -A --group-directories-first
    return
  fi
  ls -A
}

chpwd_functions=(auto-ls $chpwd_functions)
