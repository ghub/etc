" Stole from (in no particular order)
"
"   Martin Grenfell, github.com/scrooloose
"   Matt Woznisk,    github.com/godlygeek
"   Steve Francia,   github.com/spf13
"   Tim Pope,        github.com/tpope
"   Val Markovic,    github.com/Valloric

set nocompatible

" { Plugins

filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ghub/copycppdectoimp.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-scriptease'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'vim-scripts/vim-auto-save'

call vundle#end()
filetype on

augroup vimrc
    autocmd!
augroup END

" runtime! ftplugin/man.vim

" Plugin 'ghub/copycppdectoimp.vim'
nnoremap <Leader>f :GHPH<CR>

" Plugin 'kien/ctrlp.vim'
let g:ctrlp_max_files=0
let g:ctrlp_match_window='max:30'

" Plugin 'majutsushi/tagbar'
let g:tagbar_left=1
let g:tagbar_sort=0
nnoremap <Leader>tb :TagbarToggle<CR><C-W>=

" Plugin 'scrooloose/nerdtree'
" nnoremap   <C-E>       :NERDTreeToggle<CR>
" nnoremap   <Leader>e   :NERDTreeFind<CR>

" Plugin 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" Plugin 'SirVer/ultisnips'
set runtimepath+=~/etc
let g:UltiSnipsSnippetsDir="~/etc/UltiSnips"
let g:UltiSnipsExpandTrigger="<C-D>"
let g:UltiSnipsJumpBackwardTrigger="<C-B>"
let g:UltiSnipsJumpForwardTrigger="<C-F>"
let g:UltiSnipsListSnippets="<C-T>"

" Plugin 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_min_num_identifier_candidate_chars=4
let g:ycm_seed_identifiers_with_syntax=1
nnoremap <Leader>yc :YcmForceCompileAndDiagnostics<CR>
nnoremap <Leader>yg :YcmCompleter GoTo<CR>
nnoremap <Leader>yr :YcmCompleter ClearCompilationFlagCache<CR>

" }

set background=dark
set colorcolumn=+1
set cursorline
" set formatoptions+=j
" set formatoptions-=o
" set formatoptions-=r
set gdefault
set hlsearch
set ignorecase
set lazyredraw
set list
set matchtime=2
"set noswapfile
set number
set report=0
set shortmess=atI
set smartcase
set exrc
set secure

colorscheme solarized

     map <Space> \
inoremap jk      <Esc>
vnoremap jk      <Esc>
cnoremap jk      <Esc>

" nnoremap   `    '
nnoremap ; :

" nnoremap   '    `
" nnoremap   g,   g,zz
" nnoremap   g;   g;zz
" nnoremap   j    gj
" nnoremap   k    gk
" nnoremap   N    Nzzzv
" nnoremap   n    nzzzv
" nnoremap   Q    gq
" nnoremap   Y    y$
" nnoremap   *    *zzzv
" nnoremap   #    #zzzv
" vnoremap   ;    :
" vnoremap   :    ;
" vnoremap   <    <gv
" vnoremap   >    >gv

cnoremap   <C-J>       <Down>
cnoremap   <C-K>       <Up>

"nnoremap   <C-Up>      <C-W>k<C-W>_
"nnoremap   <C-Down>    <C-W>j<C-W>_
"nnoremap   <C-Left>    <C-W>h<C-W>_
"nnoremap   <C-Right>   <C-W>l<C-W>_

"nnoremap   <Leader>g   g<C-]>

nnoremap <Leader>l :nohlsearch<CR>
nnoremap <Leader>v :vsplit $MYVIMRC<CR>
nnoremap <Leader>V :source $MYVIMRC<CR>

augroup vimrc
    autocmd VimResized * wincmd =
augroup END

if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

" vim: set foldmethod=marker foldmarker={,} foldlevel=0
