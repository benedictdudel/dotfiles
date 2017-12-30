# Hi, my name is Benedict

.. and here you will find my configuration files for a variety of different programmes.

# Table of contents

- [Requirements](#requirements)
- [Usage](#usage)
  - [Stow](#stow)

# Requirements

- [Stow](https://www.gnu.org/software/stow/)
- Optional:
  - [X11](https://en.wikipedia.org/wiki/X_Window_System)
  - [editorconfig](http://editorconfig.org/)
  - [git](https://git-scm.com/)
  - [lftp](https://lftp.yar.ru/)
  - [mycli](https://www.mycli.net/)
  - [Neovim](https://neovim.io/)
  - [newsbeuter](http://newsbeuter.org/)
  - [npm](https://www.npmjs.com/)
  - [tmux](https://github.com/tmux/tmux/wiki)
  - [urxvt](http://software.schmorp.de/pkg/rxvt-unicode.html)
    - [urxvt-fullscreen](https://wiki.archlinux.org/index.php/Rxvt-unicode#Fullscreen)
  - [zsh](http://www.zsh.org/)
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-completions](https://github.com/zsh-users/zsh-completions)
    - [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)

# Usage

## Stow

Install configuration files into a specific target dir. Normally you would always use your
home directory.

```
stow -t ~ git
```
