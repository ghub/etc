" Stolen from (in no particular order)
"
"   Martin Grenfell, github.com/scrooloose
"   Matt Woznisk,    github.com/godlygeek
"   Steve Francia,   github.com/spf13
"   Tim Pope,        github.com/tpope
"   Val Markovic,    github.com/Valloric

set nocompatible
" set diffopt-=internal

" { Plugins

call plug#begin('~/.vim/bundle')

Plug 'airblade/vim-gitgutter'
Plug 'beyondmarc/opengl.vim'
Plug 'bling/vim-airline'
Plug 'Chiel92/vim-autoformat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'djoshea/vim-autoread'
Plug 'elixir-lang/vim-elixir'
Plug 'ElmCast/elm-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'ghub/copycppdectoimp.vim'
Plug 'ghub/vim-unimpaired'
Plug 'ghub/vim-vinegar'
Plug 'gmarik/Vundle.vim'
Plug 'honza/vim-snippets'
Plug 'lifepillar/vim-solarized8'
Plug 'majutsushi/tagbar'
Plug 'MicahElliott/vrod'
Plug 'Raimondi/delimitMate'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim'
Plug 'slashmili/alchemist.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'Valloric/MatchTagAlways'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'vim-scripts/argtextobj.vim'
Plug 'vim-scripts/emacsmodeline.vim'
Plug 'vim-scripts/vim-auto-save'
Plug 'wlangstroth/vim-racket'

call plug#end()

runtime! ftplugin/man.vim

" Plug 'ghub/copycppdectoimp.vim'
nnoremap <Leader>h :GHPH<CR>

" Plug 'Chiel92/vim-autoformat'
let g:formatdef_scheme='"scmindent.rkt"'
let g:formatters_scheme=['scheme']

" Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_arg_map=1
let g:ctrlp_extensions=['quickfix']
let g:ctrlp_lazy_update=1
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_match_window='max:30'
let g:ctrlp_max_files=0
let g:ctrlp_user_command=['.git', 'cd %s && git_ls_files.sh']

" Plug 'majutsushi/tagbar'
let g:tagbar_left=1
let g:tagbar_sort=0
nnoremap <Leader>tb :TagbarToggle<CR><C-W>=

" Plug 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_enable_racket_racket_checker=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" Plug 'SirVer/ultisnips'
set runtimepath+=~/etc
let g:UltiSnipsSnippetsDir='~/etc/UltiSnips'
let g:UltiSnipsExpandTrigger='<C-S>'
let g:UltiSnipsJumpBackwardTrigger='<C-B>'
let g:UltiSnipsJumpForwardTrigger='<C-F>'
let g:UltiSnipsListSnippets='<C-T>'

" Plug 'tpope/vim-projectionist'
nnoremap <Leader>a :A<CR>'"

" Plug 'Valloric/YouCompleteMe'
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

if !empty($COLORTERM)
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme solarized8

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
nnoremap <F7>  :Git<Bar>wincmd K<CR>
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

vnoremap <Leader>t :Twrite<CR>

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
