export PATH="/usr/local/go/bin:$PATH"
# Extend path for GO binaries
# Source: http://askubuntu.com/a/476435

export PATH="$HOME/.composer/vendor/bin:$PATH"
# Extend path for composer executables
# Source: http://askubuntu.com/a/476435

export PATH="$HOME/.linuxbrew/bin:$PATH:"
# Extend path for Linux Brew binaries
# Source: http://askubuntu.com/a/476435

export PATH="$HOME/.linuxbrew/sbin:$PATH:"
# Extend path for Linux Brew binaries
# Source: http://askubuntu.com/a/476435

export PATH="/opt/apache-maven-3.3.9/bin:$PATH:"
# Extend path for maven binaries
# Source: http://askubuntu.com/a/476435

export LANG=en_GB.UTF-8
# Export LANG environment variable
# Source: http://stackoverflow.com/a/24995139

export PAGER='less'
# Use less as the default pager
# Source: http://stackoverflow.com/a/171564

export EDITOR='vim'
# Use neovim as the default editor
# Source: http://unix.stackexchange.com/a/350030

export GOPATH=$HOME
# Set the home directory as our GOPATH
# Source: https://golang.org/doc/code.html

export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/jre/bin/java::")
# Set the path to the JAVA JRE as our JAVA_HOME path
# Source: http://stackoverflow.com/a/30538036

setopt IGNORE_EOF
# Do not exit on end-of-file. Require the use of exit or logout instead.
# Source: http://zsh.sourceforge.net/Doc/Release/Options.html

setopt AUTO_CD
# For simply changing the directory by typing just the name
# Source: http://zsh.sourceforge.net/Intro/intro_16.html

setopt GLOBDOTS
# Lets files beginning with a . be matched without explicitly specifying the dot.
# Source: http://zsh.sourceforge.net/Intro/intro_16.html

setopt EXTENDEDGLOB
# Enabled to use all the extended expansion/globbing features.
# Source: http://zsh.sourceforge.net/Doc/Release/Options.html

setopt NO_CLOBBER
# Warn if file does exits when trying to redirect input
# Source: http://zsh.sourceforge.net/Doc/Release/Options.html

setopt PROMPT_SUBST
# Reevaluate the prompt string each time it's displaying a prompt
# Source: http://unix.stackexchange.com/a/40646

setopt HIST_REDUCE_BLANKS
# Remove superfluous blanks from each command line being added to the history list.
# Source: http://zsh.sourceforge.net/Doc/Release/Options.html

setopt HIST_IGNORE_ALL_DUPS
# If a new command line being added to the history list duplicates an older one, the older command is removed from the list
# Source: http://zsh.sourceforge.net/Doc/Release/Options.html

autoload -Uz vcs_info
# Enable vcs_info function in order to gather version control information
# Source: http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information

zstyle ':vcs_info:*' enable git svn
# Only enable the version control systems git and svn
# Source: http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information

zstyle ':vcs_info:git*' formats "%{$fg[blue]%}%b%{$reset_color%} "
# Set a list of formats, used when actionformats is not used
# Source: http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information

precmd() {
  vcs_info
}
# Reset the PROMPT variable itself in precmd
# Source: http://unix.stackexchange.com/a/32151

PROMPT='%{$fg[blue]%}%# %{$reset_color%}'
# Format of the leftside of the prompt
# Source: http://www.nparikh.org/unix/prompt.php

RPROMPT='%{$fg[blue]%}%~ ${vcs_info_msg_0_}%{$reset_color%}'
# Format of the rightside of the prompt
# Source: http://www.nparikh.org/unix/prompt.php

HISTFILE=$HOME/.zsh_history
# Use path of file to save the history
# Source: http://zsh.sourceforge.net/Intro/intro_13.html

HISTSIZE=10000
# Set history size to 10000 lines
# Source: http://zsh.sourceforge.net/Intro/intro_13.html

SAVEHIST=10000
# Set size of history to save to 10000 lines
# Source: http://zsh.sourceforge.net/Intro/intro_13.html

alias ..='cd ..'
# Use two dots to go one directory back
# Source: http://linuxcommand.org/lc3_man_pages/cdh.html

alias mkdir='mkdir --parents --verbose'
# Create child directories and print created directories
# Source: http://man7.org/linux/man-pages/man1/mkdir.1.html

alias ll='ls -l --group-directories-first --color=always'
# List directories first and files
# Source: http://man7.org/linux/man-pages/man1/ls.1.html

alias la='ls -A --group-directories-first --color=always'
# List directories first and dotfiles
# Source: http://man7.org/linux/man-pages/man1/ls.1.html

alias rm='rm -I --preserve-root'
# Delete files and preserve root
# Source: https://linux.die.net/man/1/rm

alias mv='mv -i'
# Move file and prompt before.
# Source: https://linux.die.net/man/1/mv

alias cp='cp -i'
# Copy file and prompt berfore.
# Source: http://man7.org/linux/man-pages/man1/cp.1.html

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Load plugin for fish-like autosuggestions
# Source: https://github.com/zsh-users/zsh-autosuggestions
