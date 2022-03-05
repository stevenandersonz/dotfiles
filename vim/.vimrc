call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'andrewradev/tagalong.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
call plug#end()
set re=0
set number
set textwidth=100
set undolevels=1000
set backspace=indent,eol,start
set softtabstop=4
set tabstop=4
set shiftround
set expandtab
set shiftwidth=4	
set hlsearch
set lazyredraw
set relativenumber
set laststatus=2
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P
set bg=dark
let mapleader=","
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
            \ 'javascript.jsx' : {
                \ 'extends' : 'jsx',
            \},
            \}
let g:tagalong_additional_filetypes = ['javascript','js']
let g:tagalong_verbose = 1
let g:ale_linters = {
            \ 'javascript': ['eslint']
            \}
let g:ale_echo_msg_error_str = 'E'
let g:ale_set_highlights=0
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = "🔥"
let g:ale_sign_warning = "☢️""

nnoremap <silent> <C-j> :GFiles<CR>
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer.sh<CR> :redraw!<CR>
map <silent> <leader>n :noh <CR>
map <leader>ga :Git add . <CR>
map <leader>gs :Git status <CR>
map <leader>gc :Git commit -m 
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
syntax on
imap kj <Esc>
set background=dark
colorscheme gruvbox
