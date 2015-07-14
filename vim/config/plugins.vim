" tim pope: cool guy 
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'

" zen coding
Plug 'mattn/emmet-vim', { 'for': 'html' }

" buffergator (<leader>b)
Plug 'jeetsukumaran/vim-buffergator'

" Powerline
set laststatus=2
set showtabline=2
set noshowmode

Plug 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" syntastic (syntax checker)
Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" indent guides
Plug 'nathanaelkane/vim-indent-guides', { 'for': 'clojure' }

" alignment
Plug 'junegunn/vim-easy-align'
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" clojure
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }
Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
Plug 'jebberjeb/grimoire.vim', { 'for': 'clojure' }
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" livescript
Plug 'gkz/vim-ls', { 'for': 'ls' }
au BufNewFile,BufReadPost *.ls setl shiftwidth=2 expandtab

" go
Plug 'fatih/vim-go', { 'for': 'go' }
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" less
Plug 'groenewege/vim-less'

" ctrlp
Plug 'kien/ctrlp.vim'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" completion
Plug 'Valloric/YouCompleteMe', { 'for': ['go', 'python', 'javascript'] }

" supertab
Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "\<c-x>\<c-o>"

