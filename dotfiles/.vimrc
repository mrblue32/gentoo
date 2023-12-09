let mapleader = " "
let &fillchars ..= ',eob: '

autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %
autocmd BufWritePre * %s/\s\+$//e
autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl
autocmd BufNewFile * $d
autocmd BufNewFile * 1

call plug#begin()

Plug 'junegunn/goyo.vim'
Plug 'dylanaraps/wal.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme wal
syntax on

set relativenumber
set background=dark
set ignorecase
set tabstop=4
set number
set shiftwidth=4
set wildmode=longest,list,full

:inoremap @func1<leader> <ESC>:s/^/\rvoid\rfunc()\r{\r	\r}\r/ <cr><up><left> i
:inoremap @for1<leader> <ESC>:s/^/\rfor(int i = 0; i < x; i++)\r{\r	\r}\r/ <cr><up><left> i
:inoremap @for2<leader> <ESC>:s/^/\rfor(int i = 0; i < x; i++)\r{\r	for(int j = 0; j < y; j++)\r	{\r		\r	}\r}\r/ <cr><up><right> i
:inoremap { {}<left>
:inoremap [ []<left>
:inoremap ( ()<left>
:inoremap < <><left>

:map <F8> :w <CR> :!gcc % -o %<.o && ./%<.o <CR>
:vmap <leader>c :s/^/	\/\// <CR>
:vmap <leader>dat :s/\(\w.*\)/type \1 = 0;/g
:vmap <leader>q :s/\(\w.*\)/'\1'/g <cr>
:vmap <leader>s :s/\(\w.*\)/sudo sed -i 's\/\1\/\1\/g' $HOME\/path\/to\/file <cr>
:vmap <leader>d  :s/\(\w.*\)/data[0] = "\1"; <cr>

:cmap w!! w !sudo tee > /dev/null %

:nnoremap <leader>n :tabn <CR>
:nnoremap <leader>b :tabp <CR>
:nnoremap <leader>f :Goyo \| set linebreak<CR>
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l
:nnoremap <leader>z <C-w>r <CR>
