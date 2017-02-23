" Vim Plug
call plug#begin('~/.vim/plugged')
	" Color
	Plug 'reedes/vim-colors-pencil'

	" Syntax
	Plug 'sheerun/vim-polyglot'
	Plug 'posva/vim-vue'
	Plug 'vim-scripts/smarty.vim'
	Plug 'cakebaker/scss-syntax.vim'

	" Completion
	Plug 'raimondi/delimitmate'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

	" Tools
	Plug 'mattn/emmet-vim'
	Plug 'scrooloose/syntastic'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'ctrlpvim/ctrlp.vim'

	" Command
	Plug 'tpope/vim-abolish'
	Plug 'vim-scripts/matchit.zip'
	Plug 'nelstrom/vim-visual-star-search'

	" Interface
	Plug 'scrooloose/nerdtree'
	Plug 'ap/vim-buftabline'
	Plug 'airblade/vim-gitgutter'

	" Language
	Plug 'fatih/vim-go'
call plug#end()

" Settings
syntax on
filetype plugin on

set encoding=utf-8

set path+=**

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

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set statusline=
set statusline+=%*\ \ \ %f
set statusline+=%=
set statusline+=COLUMN:\ %c\ \ \ "
set statusline+=LINE:\ %l\ \ \ "
set statusline+=TOTAL:\ %L\ \ \ "

set display+=lastline

" Filetype
autocmd BufNewFile,BufRead *.scss set filetype=scss.css
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby

" Omnifunctions
augroup omnifuncs
  autocmd!
  autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" Colors
set background=dark
colorscheme pencil

" Mappings
noremap jj <Esc>:w<CR>

nnoremap <PageUp> :bnext<CR>
nnoremap <PageDown> :bprev<CR>

nnoremap <silent><esc> :noh<CR>
nnoremap <esc>^[ <esc>^[

" Functions
com! FormatJSON %!python -m json.tool
com! MakeTags !ctags .
cmap w!! %!sudo tee > /dev/null %

set grepprg=ag\ --nogroup\ --nocolor

" Plugins
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

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

let g:deoplete#enable_at_startup = 1

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
