# set vim as the default editor
PROMPT='%F{33}cd%f%F{39}en%f%F{38}ic%f%F{44}ola%f%F{50}@%f%F{43}m%f%F{44}ac%f%F{38}:%1~/%f %F{44}%#%f '

export EDITOR='nvim'

ALIASES_FILE="${ZDOTDIR:-$HOME/.config/zsh}/aliases.zsh"
if [ -r "$ALIASES_FILE" ]; then
  source "$ALIASES_FILE"
fi

source <(fzf --zsh)

HISTORY_IGNORE=clear
export PATH="$HOME/.cargo/bin:$PATH"

gcm() { git commit --message "$*" }

# Auto complete
autoload -U compinit; compinit

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
