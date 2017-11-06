set nocompatible
" Make Vim behave in a more useful way
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'nocompatible'

set t_Co=256
" Number of colors
" Source: http://vimdoc.sourceforge.net/htmldoc/term.html#'t_Co'

set background=dark
" Use colors which are looking good on dark backgrounds
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'background'

set showmode
" Put a message on the last line of current mode
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'showmode'

set nowrap
" Lines will not wrap and only part of long lines will be displayed
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'nowrap'

set tabstop=4
" Number of spaces that a <Tab> in the file counts for
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'tabstop'

set smarttab
" A <Tab> in front of a line inserts blanks
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'smarttab'

set tags=tags
" Filenames for the tag command
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'tags'

set softtabstop=4
" Number of spaces that a <Tab> counts for
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'softtabstop'

set expandtab
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'expandtab'

set shiftwidth=4
" Number of spaces to use for each step of (auto)indent
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'shiftwidth'

set shiftround
" Round indent to multiple of 'shiftwidth'. Applies to > and < commands.
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'shiftround'

set backspace=indent,eol,start
" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'backspace'

set autoindent
" Copy indent from current line when starting a new line
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'autoindent'

set copyindent
" Copy the structure of the existing lines indent when autoindenting a new line
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'copyindent'

set number
" Print the line number in front of each line
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'number'

set ignorecase
" Ignore case in search patterns
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'ignorecase'

set smartcase
" Override the 'ignorecase' option if the search pattern contains upper case characters.
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'smartcase'

set timeout timeoutlen=200 ttimeoutlen=100
" determine the behavior when part of a mapped key sequence or keyboard code has been received
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'timeout'

set visualbell
" Use visual bell instead of beeping
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'visualbell'

set noerrorbells
" Don't ring the bell (beep or screen flash) for error messages
" Source:

set autowrite
" Write the contents of the file, if it has been modified
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'autowrite'

set mouse=a
" Enable the use of the mouse
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'mouse'

set nobackup
" Don't do any backups
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'nobackup'

let mapleader = ","
" To define a mapping which uses the "mapleader" variable, the special string "<Leader>" can be used
" Source: http://vimdoc.sourceforge.net/htmldoc/map.html#mapleader

let g:mapleader = ","
" Make use of mapleader in functions as well
" Source: https://stackoverflow.com/questions/11175358/vim-global-variables-and-mapleader

nnoremap j gj
" Move cursor by display lines when wrapping
" Source: http://vim.wikia.com/wiki/Move_cursor_by_display_lines_when_wrapping

nnoremap k gk
" Move cursor by display lines when wrapping
" Source: http://vim.wikia.com/wiki/Move_cursor_by_display_lines_when_wrapping

set showcmd
" Show (partial) command in the last line of the screen
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'showcmd'

set wildignore+=*/vendor/**
" A file that matches with one of these patterns is ignored when completing file or directory names
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'wildignore'

set wildignore+=*/node_modules/**
" A file that matches with one of these patterns is ignored when completing file or directory names
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'wildignore'

set clipboard=unnamedplus
" Copy into system clipboard
" Source: http://vimdoc.sourceforge.net/htmldoc/options.html#'clipboard'

set listchars=tab:▸\ ,eol:¬
"
" Source:

set textwidth=80
"
" Source:

set colorcolumn=+1
"
" Source:

set splitbelow
"
" Source:

set splitright
"
" Source:

call plug#begin('~/.vim/plugged')

	Plug 'reedes/vim-colors-pencil'
	" A light (and dark) color scheme for Vim inspired by iA Writer
	" Source: https://github.com/reedes/vim-colors-pencil

	Plug 'sheerun/vim-polyglot'
	" A collection of language packs
	" Source: https://github.com/sheerun/vim-polyglot

	Plug 'raimondi/delimitmate'
	" Provides automatic closing of quotes, parenthesis, brackets, etc
	" Source: https://github.com/Raimondi/delimitMate

	Plug 'mattn/emmet-vim'
	" Provides support for expanding abbreviations similar to emmet
	" Source: https://github.com/mattn/emmet-vim

	Plug 'scrooloose/syntastic'
	" Syntax checking
	" Source: https://github.com/vim-syntastic/syntastic

	Plug 'editorconfig/editorconfig-vim'
	" EditorConfig plugin
	" Source: https://github.com/editorconfig/editorconfig-vim

	Plug 'ctrlpvim/ctrlp.vim'
	" Fuzzy file, buffer, mru, tag, etc. finder
	" Source: https://github.com/kien/ctrlp.vim

	Plug 'adelarsq/vim-matchit'
	" Extended % matching for HTML, LaTeX, and many other languages
	" Source: https://github.com/adelarsq/vim-matchit

	Plug 'nelstrom/vim-visual-star-search'
	" Start a * or # search from a visual block
	" Source: https://github.com/bronson/vim-visual-star-search

	Plug 'scrooloose/nerdtree'
	" A tree explorer plugin
	" Source: https://github.com/scrooloose/nerdtree

	Plug 'ap/vim-buftabline'
	" Buftabline takes over the tabline and renders the buffer list in it instead of a tab list
	" Source: https://github.com/ap/vim-buftabline

	Plug 'airblade/vim-gitgutter'
	" Git diff in the 'gutter' (sign column)
	" Source: https://github.com/airblade/vim-gitgutter

	Plug 'tpope/vim-commentary'
	" Comment stuff out
	" Source: https://github.com/tpope/vim-commentary

call plug#end()

colorscheme pencil
" Set colorscheme
" Source: https://github.com/reedes/vim-colors-pencil

set grepprg=ag\ --nogroup\ --nocolor
" Use ag over grep
" Source: https://robots.thoughtbot.com/faster-grepping-in-vim

let g:ctrlp_show_hidden = 1
" Show hidden files by default CtrlP
" Source: https://github.com/kien/ctrlp.vim/issues/279

let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
" Use ag in CtrlP for listing files
" Source: https://robots.thoughtbot.com/faster-grepping-in-vim

let g:ctrlp_use_caching = 0
" ag is fast enough that CtrlP doesn't need to cache
" Source: https://robots.thoughtbot.com/faster-grepping-in-vim

map <C-n> :NERDTreeToggle<CR>
" Open NERDTree with Ctrl+n
" Source: https://github.com/scrooloose/nerdtree

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Close vim when NERDTree is the only left open window
" Source: https://github.com/scrooloose/nerdtree
