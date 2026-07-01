_money_completions() {
  local cur="${COMP_WORDS[COMP_CWORD]}"
  if [[ "${COMP_WORDS[1]}" == "add" && "$COMP_CWORD" == "3" ]]; then
    COMPREPLY=($(compgen -W "$(money --completions 2>/dev/null)" -- "$cur"))
  elif [[ "$COMP_CWORD" == "1" ]]; then
    COMPREPLY=($(compgen -W "add sync" -- "$cur"))
  fi
}
complete -F _money_completions money
