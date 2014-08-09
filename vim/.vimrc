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

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ghub/copycppdectoimp.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
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

" runtime! ftplugin/man.vim

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
set number
set report=0
set shortmess=atI
set smartcase

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

" nnoremap   <C-E>       :NERDTreeToggle<CR>
" nnoremap   <Leader>e   :NERDTreeFind<CR>
" nnoremap   <Leader>f   :GHPH<CR>
" nnoremap   <Leader>g   g<C-]>
" nnoremap   <Leader>pc  :YcmCompleter GoToDeclaration<CR>
" nnoremap   <Leader>pd  :YcmCompleter GoToDefinition<CR>
" nnoremap   <Leader>pg  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" nnoremap   <Leader>t   :TagbarToggle<CR>
nnoremap   <Leader>l   :nohlsearch<CR>
nnoremap   <Leader>v   :vsplit $MYVIMRC<CR>
nnoremap   <Leader>V   :source $MYVIMRC<CR>
" nnoremap   <Leader>y   :YcmForceCompileAndDiagnostics<cr>
"
" let g:bufExplorerShowRelativePath=1
" let g:bufExplorerSortBy='name'
" let g:ctrlp_match_window='max:30'
" let g:slime_target='tmux'
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_error_symbol='✗'
" let g:syntastic_warning_symbol='⚠'
" let g:tagbar_left=1
" let g:tagbar_sort=0
" let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_confirm_extra_conf=0
" let g:ycm_min_num_identifier_candidate_chars=4
" let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" "let g:UltiSnipsExpandTrigger="<C-s>"
" "let g:UltiSnipsJumpForwardTrigger="A-f"
" "let g:UltiSnipsJumpBackwardTrigger="A-b"
" "let g:UltiSnipsListSnippets="<A-s>"

autocmd VimResized * wincmd =

set exrc
set secure

if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

" vim: set foldmethod=marker foldmarker={,} foldlevel=0
