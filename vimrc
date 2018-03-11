set nocompatible
set modifiable
set mouse=a
set timeout timeoutlen=1000 ttimeoutlen=10

" set the runtime path to include Vundle and initializek
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Autocomple for JS
Plugin 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion= ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion= ['<C-k>', '<C-p>', '<Up>']
let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python':1, 'javascript':1 }
let g:ycm_autoclose_preview_window_after_insertion = 1

" Git wrapper
Plugin 'tpope/vim-fugitive'

"Colorscheme
Plugin 'flazz/vim-colorschemes'

"Elm Plugin
Plugin 'lambdatoast/elm.vim'

"A tree explorer
Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'

" syntax highlighting
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
" let g:syntastic_javascript_checkers = ['eslint']
" syntastic symbols
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

" Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|jspm_packages'

" Project text search
Plugin 'dyng/ctrlsf.vim'

" Fast JK
Plugin 'rhysd/accelerated-jk'
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
" nmap j <Plug>(accelerated_jk_gj_position)
" nmap k <Plug>(accelerated_jk_gk_position)


" Open NERDTree when there is no files
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "right"
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" -| open nerd tree when a new tab opens
" autocmd BufWinEnter * NERDTreeMirror

" Find same filetype in the same directory
" Plugin 'tpope/vim-vinegar'

" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/powerline', {'rtp': '/powerline/bindings/vim'}
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:airline_section_y = 'You are awesome.'
let g:airline_section_warning = ''
let g:airline_section_error=''
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#show_splits = 0

" Vim plugin for the_silver_searcher, 'ag', a replacement for 'ack'
Plugin 'rking/ag.vim'

" Smart undo redo
Plugin 'sjl/gundo.vim'

" Emmet plugin editor
Plugin 'mattn/emmet-vim'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Surround plugins
Plugin 'tpope/vim-surround'

" Git plugin 
Plugin 'airblade/vim-gitgutter'
let g:GitGutterLineHighlightsEnable=1

" Comment Plugin
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 2

" A very cool plugin to show the methods, classes and tags in a sidebar
Plugin 'majutsushi/tagbar'

" Vastly improved JS indentation and syntax support in VIM
Plugin 'pangloss/vim-javascript'

" Vim Easymotion to navigation, word highlighter 
Plugin 'Lokaltog/vim-easymotion'

" Plugin to auto save the editing files
" Plugin 'vim-scripts/vim-auto-save'
" let g:auto_save = 1

call vundle#end()            " required
filetype plugin indent on    " required

let mapleader="\<Space>"
let g:ackprg = 'ag --vimgrep'
" let g:nerdtree_tabs_open_on_console_startup=0

"Key Mappings
" :imap jj <Esc> :w<CR>
:inoremap kj <Esc>`^:w<CR>
:inoremap lkj <Esc>`^:wq<CR>

"Avoid shift forever
nnoremap ; :

" Open file
nnoremap <Leader>o :CtrlP<CR>

" Save file
nnoremap <Leader><leader> :w<CR>

" Copy line
nnoremap Y y$

" Find text in file
nnoremap <leader>f /

" Find the text in the current directory
nnoremap <leader>g :CtrlSF 

" Open a new tab
nnoremap <leader>k :tabn<CR>
nnoremap <leader>j :tabp<CR>
nnoremap <leader>n :tabnew<CR>

" NERDTree Toggle
nnoremap <leader>, :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeFind<CR>

" Quit the tab
nnoremap <leader>q <ESC>:q<CR>

" Quit force
" nnoremap <leader>qx <ESC>:q!<CR>

" Move to next git change
nnoremap <leader>u :GitGutterNextHunk<CR>
nnoremap <leader>i :GitGutterPrevHunk<CR>

" Access system clipboard
noremap <leader>y "+y
noremap <leader>t "+p

" Add quotes
nnoremap <leader>" ciw""<Esc>P
nnoremap <leader>' ciw''<Esc>P

" Tagbar Toggle
nnoremap <leader>b :TagbarToggle<CR>

" NERDCommenter Toggle
nmap <leader>/ <Plug>NERDCommenterToggle
xmap <leader>/ <Plug>NERDCommenterToggle
nmap <leader>\ <Plug>NERDCommenterSexy
xmap <leader>\ <Plug>NERDCommenterSexy

" EasyMotion Conf
map <leader>w <Plug>(easymotion-prefix)

" copy word under cursor
map <leader>c bvw"+y

" replace the items single quotes
map <leader>r' di'h<SPACE>t
map <leader>r" di"h<SPACE>t

" somehow this combimaiton kills vim
map K <nop>
map <Ctrl>C <nop>

" Settings
set ignorecase
set relativenumber
set laststatus=2
set linespace=0
set nobackup
set noswapfile
set nocompatible
set write
set backspace=2
set background=dark
set cursorline

" Powerline settings
set guifont=Menlo\ 12
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
syntax on
colorscheme hybrid


"nerdtree git configuration
" let g:NERDTreeIndicatorMapCustom = {
    " \ 'Staged"    : '✚",
    " \ 'Untracked" : '✭",
    " \ 'Renamed"   : '➜",
    " \ 'Unmerged"  : '═",
    " \ 'Deleted"   : '✖",
    " \ jDirty"     : '✗",
    " \ 'Clean"     : '✔︎",
    " \ 'Unknown"   : '?"
    " \ }

cabbrev help tab help

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" page setup
set filetype=html           
set smartindent            
set tabstop=4
set shiftwidth=4
set number
set expandtab
set shellcmdflag=-ic

au BufNewFile,BufRead *.elm set filetype=elm
autocmd TextChanged,TextChangedI <buffer> silent write
