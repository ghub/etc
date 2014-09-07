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

runtime! ftplugin/man.vim

" Plugin 'ghub/copycppdectoimp.vim'
nnoremap <Leader>h :GHPH<CR>

" Plugin 'kien/ctrlp.vim'
let g:ctrlp_max_files=0
let g:ctrlp_match_window='max:30'

" Plugin 'majutsushi/tagbar'
let g:tagbar_left=1
let g:tagbar_sort=0
nnoremap <Leader>tb :TagbarToggle<CR><C-W>=

" Plugin 'scrooloose/nerdtree'
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>

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
set exrc
set formatoptions+=j
set formatoptions-=o
set formatoptions-=r
set gdefault
set hlsearch
set ignorecase
set lazyredraw
set list
set matchtime=2
set number
set report=0
set secure
set shortmess=atI
set smartcase
set wildmode=longest,list,full

colorscheme solarized

map <Space> \

cnoremap jk <Esc>
inoremap jk <Esc>
vnoremap jk <Esc>

nnoremap ;  :
vnoremap ;  :

nnoremap `  '
nnoremap '  `

vnoremap <  <gv
vnoremap >  >gv

nnoremap g, g,zz
nnoremap g; g;zz

nnoremap j  gj
nnoremap k  gk

nnoremap *  *zzzv
nnoremap #  #zzzv
nnoremap n  nzzzv
nnoremap N  Nzzzv

nnoremap Q  gqap
vnoremap Q  gq

nnoremap Y  y$

cnoremap <C-J> <Down>
cnoremap <C-K> <Up>

nnoremap <Leader>aF yiw/\/\/ Q<Esc>jOclass ;<Esc>P
nnoremap <Leader>af yiw/\/\/ C<Esc>jOclass ;<Esc>P
nnoremap <Leader>aI yiw/\/\/ Q<Esc>jO#include <><Esc>P
nnoremap <Leader>ai yiw/\/\/ C<Esc>jO#include <.h><Esc>B<Esc>p

nnoremap <Leader>ff :Ggrep! <cword><CR><CR>
nnoremap <Leader>fc :Ggrep! -w "public <cword>"<CR><CR>
nnoremap <Leader>fh :Ggrep! -w "new <cword>"<CR><CR>
nnoremap <Leader>fs :Ggrep! -w "^ *<cword>\>[^&*:][^&*:]*[(;]"<CR><CR>

nnoremap <Leader>g g<C-]>
nnoremap <Leader>l :nohlsearch<CR>
nnoremap <Leader>V :source $MYVIMRC<CR>
nnoremap <Leader>v :vsplit $MYVIMRC<CR>

augroup vimrc
    autocmd!
    autocmd VimResized * wincmd =
augroup END

if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

" vim: set foldmethod=marker foldmarker={,} foldlevel=0
