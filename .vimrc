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
nmap <C-m> :NERDTreeToggle<CR>
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
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
nnoremap <silent> <C-f> :GFiles<CR>
set bg=dark
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
syntax on
imap ii  <Esc>
set background=dark
colorscheme gruvbox
