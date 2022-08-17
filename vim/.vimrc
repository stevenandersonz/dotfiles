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
set relativenumber
let mapleader=","
nnoremap ss :update<cr>
map <silent> <leader>n :noh <CR>
map <silent> <leader>t :r !date<CR>
map <leader>ga :Git add . <CR>
map <leader>gp :Git push 
map <leader>gf :Git push 
map <leader>gs :Git status <CR>
map <leader>gc :Git commit -m "
map <leader>gl :Git log --all --decorate --oneline --graph
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
syntax on
imap kj <Esc>
