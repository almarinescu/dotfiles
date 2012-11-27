set ai
set ts=2
set noexpandtab
set smarttab
set shiftwidth=2
set nobackup
set noswapfile
set backspace=eol,indent,start
set mouse=a
set tags=tags;/
" [ASCII=\%03.3b]\ [HEX=\%02.2B]\ 
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [POS=%04l\/%L,%04v][%p%%]
set laststatus=2
set colorcolumn=80
set number
set foldmethod=indent
set foldlevel=9999
set hlsearch
set incsearch

" GVim specific options
if has('gui_running')
	set guioptions=
	set gfn=Ubuntu\ Mono\ 12
	colorscheme jellybeans
  hi Todo guifg=#40ffff guibg=#606060
endif

syntax on
filetype plugin indent on

nnoremap ; :

" Switch windows
nnoremap <Tab> <C-w>

" GVim copy selection
nnoremap <C-A-c> "+y
nnoremap <C-A-v> "+gP

nmap <leader>l :set list!<CR>
set listchars=tab:\┊\ ,eol:¬
set fillchars+=vert:┊
" set listchars=tab:▸\ ,eol:¬

" Configure TaskList.
map <leader>v <Plug>TaskList
let g:tlWindowPosition = 1

call pathogen#infect()

let g:syntastic_python_checker_args='-d W0108 -d W0312 -d C0111 -d C0103 -d W0141 -d R0904 -d R0903 -d R0201 -d R0914 -d W0232'

" Disable htlsearch when entering insert mode and enable it back again when
" entering command mode.
autocmd InsertEnter * :set nohlsearch
autocmd InsertLeave * :set hlsearch

au BufNewFile,BufRead *.less set filetype=less
" EXPERIMENTAL
" " Disable arrow keys
" noremap  <Up> ""
" noremap! <Up> <Esc>
" noremap  <Down> ""
" noremap! <Down> <Esc>
" noremap  <Left> ""
" noremap! <Left> <Esc>
" noremap  <Right> ""
" noremap! <Right> <Esc>

" Tab navigation shortcuts.
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle .<CR>
