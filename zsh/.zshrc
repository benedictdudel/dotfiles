# Export
if [ -f ~/.zsh/configs/export.zsh ]; then
  source ~/.zsh/configs/export.zsh
fi

# Prompt
if [ -f ~/.zsh/configs/prompt.zsh ]; then
  source ~/.zsh/configs/prompt.zsh
fi

# Colors
if [ -f ~/.vim/plugged/gruvbox/gruvbox_256palette.sh ]; then
  source ~/.vim/plugged/gruvbox/gruvbox_256palette.sh
fi

# History
if [ -f ~/.zsh/configs/history.zsh ]; then
  source ~/.zsh/configs/history.zsh
fi

# Aliases
if [ -f ~/.zsh/configs/aliases.zsh ]; then
  source ~/.zsh/configs/aliases.zsh
fi

# Completion
if [ -f ~/.zsh/configs/autocompletion.zsh ]; then
  source ~/.zsh/configs/autocompletion.zsh
fi

# General
setopt IGNORE_EOF

setopt PROMPT_SUBST

setopt AUTO_CD

setopt MULTIOS

setopt AUTO_NAME_DIRS

setopt GLOBDOTS
setopt EXTENDEDGLOB

setopt NO_CLOBBER
