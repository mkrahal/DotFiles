"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off                  

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Enable numbered lines on the side
set nu

" Set your leader key
let mapleader=","

" Remap quick buffer switching
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>k :bp<bar>sp<bar>bn<bar>bd<CR>

" Hidden buffer allows  buffer switching without saving
set hidden

" Save session maped to F2 and load session to F3 
set sessionoptions=blank,buffers,curdir,help,options,tabpages,winsize 
map <F2> :mksession! ~/.vim_session <cr> " Quick write session with F2
map <F3> :source ~/.vim_session <cr>     " And load session with F3

" Tab navigation use 'ctrl <-' and 'ctrl ->'
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Silence bell beeping sound
set visualbell

" Incremental searching (search as you type)
set incsearch

" Highlight search matches
set hlsearch

" Ignore case in search
set smartcase

" Highlight the current line
set cursorline

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" Disable swap file creation
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python Specific Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufNewFile,BufRead *.py set ft=python


" Python indentation 
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=790 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


" Flagging unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF8 Support
set encoding=utf-8


" Code coloring
let python_highlight_all=1
syntax on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Web Development Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Web Development Indentation
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color Overrides
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight Groups
highlight Constant ctermfg=64
highlight Statement gui=bold guifg=#d33682 ctermfg=125 cterm=bold
highlight Normal ctermfg=grey ctermbg=black
