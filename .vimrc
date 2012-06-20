"split into several files, each one called for different filetypes
"desgined for editing 
"-plain text
"-markdown
"-bash
"-python
"-html
"-css
"-php
"-LaTEX
"-many other things
"
"
"
"plugins
source ~/.vim/plugins/vimroom.vim
"
"general settings
"
"ignore case when searching
set ignorecase
"hilight search
set hlsearch
set expandtab 
"set tabwidth etc
set shiftwidth=4
set smarttab
set ai"auso/smart indent
set si
"use templates from .vim/skel
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
"set window moving with chords
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
filetype on
syntax on
"set visual stuff
colorscheme zenburn
set number
"custom keymaps
nmap <C-p> :call Prose() <Return>
nmap <C-u> :call UnProse() <Return>
"function to set prose mode
function Prose()
    set thesaurus+=~/.vim/mthesaur.txt
    colorscheme prose
    set wrap
    inoremap . .<C-g>u
    inoremap ! !<C-g>u
    inoremap ? ?<C-g>u
    inoremap : :<C-g>u
    map k gk
    map j gj
    set linebreak
    set spell
    set nonumber
    let g:vimroom_width = 150 "some vimroom parameters
    let g:vimroom_background = 254
    VimroomToggle "toggle vimroom
endfunction
function UnProse()
    colorscheme zenburn
    set nowrap
    set number
    set nospell
    set nolinebreak
    iunmap .
    iunmap !
    iunmap ?
    iunmap :
    unmap j
    unmap k
    VimroomToggle "toggle vimroom
    set modifiable
endfunction
