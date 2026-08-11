PROMPT='%F{39}%n%f%F{44}@%f%F{43}%m%f%F{38}:%1~%f %F{44}%#%f '

ALIASES_FILE="${ZDOTDIR:-$HOME/.config/zsh}/aliases.zsh"
if [ -r "$ALIASES_FILE" ]; then
  source "$ALIASES_FILE"
fi
unset ALIASES_FILE

mkdir -p "${HISTFILE:h}" "$XDG_CACHE_HOME/zsh"
setopt APPEND_HISTORY HIST_IGNORE_SPACE HIST_REDUCE_BLANKS SHARE_HISTORY

autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

if (( $+commands[fzf] )) && [[ -t 0 ]]; then
  source <(fzf --zsh)
fi

gcm() { git commit --message "$*" }

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
