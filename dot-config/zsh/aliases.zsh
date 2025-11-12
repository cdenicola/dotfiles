# Common tool aliases
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias cat='bat'
alias weather='curl wttr.in'
alias fzff='fzf --preview "bat --color=always {}" --preview-window "~3"'
alias yt-dlp="$HOME/Desktop/tools/yt-dlp/yt-dlp"

# Aliases: editor
alias e='$EDITOR'
alias E='sudo -e'

# Aliases: ls
alias ls='eza'
alias l='eza -1A --group-directories-first --color=always --git-ignore'
alias la='l -l --time-style="+%Y-%m-%d %H:%M" --no-permissions --octal-permissions'
alias tree='l --tree'

# Aliases: git
alias g='git'
alias ga='git add'
alias gap='ga --patch'
alias gb='git branch'
alias gba='gb --all'
alias gc='git commit'
alias gca='gc --amend --no-edit'
alias gce='gc --amend'
alias gco='git checkout'
alias gcl='git clone --recursive'
alias gd='git diff --output-indicator-new=" " --output-indicator-old=" "'
alias gds='gd --staged'
alias gi='git init'
alias gl='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n"'
alias gm='git merge'
alias gn='git checkout -b'  # new branch
alias gp='git push'
alias gr='git reset'
alias gs='git status --short'
alias gu='git pull'

# Aliases: docker
alias dps='docker ps --format "table {{.Names}}	{{.Status}}	{{.Ports}}"'
alias dl='docker logs --tail=100'
alias dc='docker compose'

# Aliases: tmux
alias ta='tmux attach'
alias tl='tmux list-sessions'
alias tn='tmux new-session -s'

# Aliases: rg
alias rg='rg --hidden --smart-case --glob="!.git/" --no-search-zip --trim --colors=line:fg:black --colors=line:style:bold --colors=path:fg:magenta --colors=match:style:nobold'

# Aliases: human-readable
alias du='du -h'

# Aliases: safety
#alias cp='cp --interactive'
#alias mv='mv --interactive'
