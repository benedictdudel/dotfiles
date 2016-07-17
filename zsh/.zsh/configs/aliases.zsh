# Neovim
alias vi='nvim'
alias vim='nvim'

alias vm='nvim'

# Tmux
alias tmux='tmux -2'

# Ls
alias ls='ls --color=always'
alias ll='ls -l --group-directories-first --color=always'
alias la='ls -A --group-directories-first --color=always'
alias l='ls -CF --group-directories-first --color=always'

# Grep
alias grep='grep --color=always'

# Cd
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'

alias cd..='cd ..'

# Mkdir
alias mkdir='mkdir -pv'

# Curl
alias header='curl -I'

# Confirmation
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# System
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# CSV/TSV
alias tsv='column -n -s "	" -t'
alias csv='column -n -s ";" -t'
