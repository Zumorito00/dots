call plug#begin('~/.vim/plugged')

" Track the engine.
Plug 'SirVer/ultisnips'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Vim surround
Plug 'tpope/vim-surround'

" Pywal colourscheme
Plug 'dylanaraps/wal.vim'

" Vimwiki
Plug 'vimwiki/vimwiki'
let g:vimwiki_table_mappings = 0

" Auto save on exit insert mode
Plug '907th/vim-auto-save'
let g:auto_save = 0

call plug#end()

" General
set nocompatible
filetype plugin on
syntax on
colorscheme wal
set number
set relativenumber
set linebreak
set showmatch
set visualbell
set viminfo+=n~/.vim/viminfo

" Searching
set hlsearch
set smartcase
set ignorecase
set incsearch

" Indenting
set expandtab
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Keybinds
" line numbers
inoremap <F5> <C-O>:set nu! rnu! <CR>
nnoremap <F5> :set nu! rnu! <CR>
" spell Check
inoremap <F7> <C-\><C-O>:setlocal spelllang=en_au spell! spell?<CR>
nnoremap <F7> :setlocal spell! spelllang=en_au<CR>
" save
nnoremap == :w<CR>
" vim shell
inoremap zS :shell<CR>
nnoremap zS :shell<CR>
" latex figures
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

" Commands
" reload syntax highlighting
command WE :w | e %
" live document preview
command L :silent !st -e zsh -c "latexmk -pdf -pvc '%'" & <CR>
" create vimwiki table
command T :VimwikiTable
" convert vimwiki to html
command VHALL :VimwikiAll2HTML
command VH :Vimwiki2HTML

" Autocommands
" :so after .vimrc write
au BufWritePost *.vimrc :so ~/.vim/.vimrc
" restart sxhkd after write
au BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &
" restart compton after write
au BufWritePost *compton.conf !killall compton; setsid compton --config *compton.conf &
" make install after write to config.h
au BufWritePost *config.*h !sudo make install
" auto save on latex documents
au BufRead,BufReadPre,BufNewFile *.tex let g:auto_save = 1
" bind == to compile latex
au BufRead,BufReadPre,BufNewFile *.tex map == :w <CR> :!pdflatex '%'; rm *.log *.aux <CR>
