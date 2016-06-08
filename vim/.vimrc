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
Plugin 'beyondmarc/opengl.vim'
Plugin 'bling/vim-airline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'djoshea/vim-autoread'
Plugin 'emacsmodeline.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'ghub/copycppdectoimp.vim'
Plugin 'ghub/vim-unimpaired'
Plugin 'gmarik/Vundle.vim'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'tikhomirov/vim-glsl'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-scriptease'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-vinegar'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'vim-scripts/vim-auto-save'

call vundle#end()
filetype on

runtime! ftplugin/man.vim

" Plugin 'ghub/copycppdectoimp.vim'
nnoremap <Leader>h :GHPH<CR>

" Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_arg_map=1
let g:ctrlp_extensions=['quickfix']
let g:ctrlp_lazy_update=1
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_match_window='max:30'
let g:ctrlp_max_files=0
let g:ctrlp_user_command=['.git', 'cd %s && git_ls_files.sh']

" Plugin 'majutsushi/tagbar'
let g:tagbar_left=1
let g:tagbar_sort=0
nnoremap <Leader>tb :TagbarToggle<CR><C-W>=

" Plugin 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" Plugin 'SirVer/ultisnips'
set runtimepath+=~/etc
let g:UltiSnipsSnippetsDir='~/etc/UltiSnips'
let g:UltiSnipsExpandTrigger='<C-S>'
let g:UltiSnipsJumpBackwardTrigger='<C-B>'
let g:UltiSnipsJumpForwardTrigger='<C-F>'
let g:UltiSnipsListSnippets='<C-T>'

"Plugin 'tpope/vim-projectionist'
nnoremap <Leader>a :A<CR>'"

" Plugin 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_extra_conf_globlist=['~/repo/*', '~/ws/*']
let g:ycm_min_num_identifier_candidate_chars=4
let g:ycm_seed_identifiers_with_syntax=1
nnoremap <Leader>yc :YcmForceCompileAndDiagnostics<CR>
nnoremap <Leader>yf :YcmCompleter FixIt<CR>
nnoremap <Leader>yg :YcmCompleter GoTo<CR>
nnoremap <Leader>yr :YcmCompleter ClearCompilationFlagCache<CR>

" }

set autowrite
set background=dark
set colorcolumn=+1
set cursorline
set diffopt+=iwhite
set diffopt+=vertical
set exrc
set formatoptions-=o
set formatoptions-=r
set gdefault
set hlsearch
set ignorecase
set lazyredraw
set list
set matchtime=2
set number
set path+=**
set report=0
set secure
set shiftround
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

nnoremap <F2>  :%s/\s\+$//<cr>
nnoremap <F3>  !}sort -fu<CR>
nnoremap <F4>  :Autoformat<CR>
nnoremap <F5>  :set errorfile&<CR>:cgetfile<CR>
nnoremap <F6>  :botright cwindow<CR>
nnoremap <F7>  :Gstatus<Bar>wincmd K<CR>
nnoremap <F8>  :Make<CR>
nnoremap <F9>  :Dispatch<CR>
nnoremap <F10> :Start<CR>
nnoremap <F12> :!git_pull.sh --rebase<CR>

nnoremap <Leader>fv :s/\s*=\s*0\s*//<CR>
vnoremap <Leader>fv :s/\s*=\s*0\s*//<CR>
nnoremap <Leader>tv :.g/\<virtual /s///<CR>Ivirtual <Esc>$i = 0<Esc>
"vnoremap <Leader>tv :g/\<virtual /s///<CR>Ivirtual <Esc>$i = 0<Esc>

nnoremap <Leader>if yiw?#include<Esc>jOclass ;<Esc>P
nnoremap <Leader>iI yiw?#include<Esc>jO#include <><Esc>P
nnoremap <Leader>ii yiw?#include<Esc>jO#include <.h><Esc>B<Esc>p

nnoremap <Leader>md yy/};$<Esc>P<<$BwC_;<Esc>
nnoremap <Leader>mI yy/{$<Esc>P$xbd^dwa: ()<Esc>P%Pa_<Esc>
nnoremap <Leader>mi yy/{$<Esc>P$xbd^dwa, ()<Esc>P%Pa_<Esc>

nnoremap <Leader>ff :Ggrep! <cword><CR><CR>
nnoremap <Leader>fc :Ggrep! -w "public <cword>"<CR><CR>
nnoremap <Leader>fh :Ggrep! -w "new <cword>"<CR><CR>
nnoremap <Leader>fs :Ggrep! -w "^ *<cword>\>[^&*:][^&*:]*[(;]"<CR><CR>
nnoremap <Leader>fw :Ggrep! -w <cword><CR><CR>

nnoremap <Leader>g g<C-]>
nnoremap <Leader>l :nohlsearch<CR>
nnoremap <Leader>V :source $MYVIMRC<CR>
nnoremap <Leader>v :vsplit $MYVIMRC<CR>

augroup vimrc
    autocmd!
    autocmd BufNewFile,BufRead Tupfile,*.tup setfiletype tup
    autocmd FileType gitcommit setlocal spell
    autocmd VimResized * wincmd =
augroup END

if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

" vim: set foldmethod=marker foldmarker={,} foldlevel=0
