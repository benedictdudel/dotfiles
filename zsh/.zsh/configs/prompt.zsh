autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "%{$fg[blue]%}%b%{$reset_color%} "
precmd() {
  vcs_info
}

setopt prompt_subst

PROMPT='%{$fg[blue]%}%# %{$reset_color%}'
RPROMPT='%{$fg[blue]%}%~ ${vcs_info_msg_0_}%{$reset_color%}'
