auto-ls() {
  ZSH_AUTO_LS_LIST_ALL=${ZSH_AUTO_LS_LIST_ALL:-false}
	emulate -L zsh
	echo
  exa_cmd="exa --icons --color=always --group --time-style=long-iso --group-directories-first"
  colorls_cmd="colorls --group-directories-first"
  ls_cmd="ls"
  if [ $ZSH_AUTO_LS_LIST_ALL == "true" ]; then
    exa_cmd="$exa_cmd --all"
    colorls="$colorls_cmd -A"
    ls_cmd="$ls_cmd -A"
  fi
  if command -v exa &>/dev/null; then
    exec $exa_cmd
    return
  fi
  if command -v $HOMEBREW_PREFIX/bin/exa &>/dev/null; then
    exec $exa_cmd
    return
  fi
  if command -v colorls &>/dev/null; then
    exec $colorls_cmd
    return
  fi
  exec $ls_cmd
}

chpwd_functions=(auto-ls $chpwd_functions)
