zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' special-dirs true
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#lost+found' '(*/)#CVS'
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:(rm|cp|mv|kill|diff|scp):*' ignore-line yes
zstyle ':completion:*:cd:*' ignore-parents parent pwd

setopt CORRECT
setopt COMPLETE_IN_WORD
setopt COMPLETE_ALIASES

autoload -Uz compinit
compinit
