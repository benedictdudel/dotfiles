zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true

setopt CORRECT
setopt COMPLETE_IN_WORD
setopt COMPLETE_ALIASES

autoload -Uz compinit
compinit
