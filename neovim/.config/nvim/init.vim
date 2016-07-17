" Vim Plug
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.vim/plugged')
	" Color
	Plug 'morhetz/gruvbox'

	" Syntax
	Plug 'sheerun/vim-polyglot'

	" Completion
	Plug 'honza/vim-snippets'
	Plug 'raimondi/delimitmate'
	Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

	" Tools
	Plug 'mattn/emmet-vim'
	Plug 'sirver/ultisnips'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/syntastic'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'Shougo/vimproc.vim', {'do' : 'make'}

	" Command
	Plug 'tpope/vim-abolish'
	Plug 'vim-scripts/matchit.zip'
	Plug 'nelstrom/vim-visual-star-search'

	" Interface
	Plug 'ap/vim-buftabline'
	Plug 'airblade/vim-gitgutter'

	" Language
	Plug 'fatih/vim-go'
	Plug 'm2mdas/phpcomplete-extended'
call plug#end()

" Settings
syntax on
filetype plugin on

set encoding=utf-8
set nrformats-=octal

set viminfo^=!
set sessionoptions-=options

set autoread

set clipboard=unnamed

set mouse-=a

set ttimeout
set updatetime=250
set ttimeoutlen=100

set history=1000
set tabpagemax=50

set smarttab
set autoindent
set copyindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

set backspace=indent,eol,start

set formatoptions+=j

set incsearch
set ignorecase
set smartcase

set undofile
set undodir=~/.config/nvim/undo//

set backup
set writebackup
set backupdir=~/.config/nvim/backup//

set directory=~/.config/nvim/swap//

" Interfaces
set laststatus=2
set ruler
set wildmenu
set number

set statusline=
set statusline+=%*\ \ \ %f
set statusline+=%=
set statusline+=COLUMN:\ %c\ \ \ "
set statusline+=LINE:\ %l\ \ \ "
set statusline+=TOTAL:\ %L\ \ \ "

set display+=lastline

" Colors
set background=dark
colorscheme gruvbox

" Mappings
nnoremap <F5> :GundoToggle<CR>
noremap jj <Esc>:w<CR>
nnoremap <PageUp> :bnext<CR>
nnoremap <PageDown> :bprev<CR>

" Functions
com! FormatJSON %!python -m json.tool
cmap w!! %!sudo tee > /dev/null %

" Plugins
let g:gruvbox_sign_column = "bg0_h"
hi SignColumn            ctermbg=235
hi GitGutterAdd          ctermbg=235
hi GitGutterChange       ctermbg=235
hi GitGutterDelete       ctermbg=235
hi GitGutterChangeDelete ctermbg=235

let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
