"Use pathogen to install plugins
call pathogen#infect()
call pathogen#helptags()

" Set up tab preferences
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Number lines relatively...easier to jump bw lines.
if version >= 703
  set relativenumber
endif
"Keep cursor in center of screen
set so=6

" Make trailing whitespace annoyingly highlighted.
highlight ExtraWhitespace ctermbg=red guibg=red
highlight IfSpace ctermbg=darkgreen guibg=lightgreen
highlight ForSpace ctermbg=darkgreen guibg=lightgreen
highlight WhileSpace ctermbg=darkgreen guibg=lightgreen

if version >= 703
  call matchadd('ExtraWhitespace', '\s\+$', 11)
  call matchadd('IfSpace', ' if(', 11)
  call matchadd('ForSpace', ' for(', 11)
  call matchadd('WhileSpace', ' while(', 11)
endif

"Mappings
let mapleader = "-"
let maplocalleader = "-"
" Disable arrow keys in all modes
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" Ctrl-d in 'insert' mode to delete a line.
inoremap <c-d> <esc>ddi
" CTRL-d in 'insert' mode to UPPER_CASE a constant
inoremap <c-u> <esc>vwU<esc>i
" Open .vimrc for editing
noremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"Shortcut to exit 'insert' mode: beware if you actually need to type 'jk'
inoremap <esc> <nop>
inoremap jk <esc>

"Spelling correction for commonly misspelled words
iabbrev waht what
iabbrev teh the
iabbrev JBM JVM
iabbrev IVM IBM

"Add commenting for common languages
augroup comments
  autocmd!
  autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
  autocmd FileType c nnoremap <buffer> <localleader>c I//<esc>
  autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END

"Use db to delete body of C-like function, cb to replace body of C function
"   (uses a close bracket on start of line to denote 'end-of-function')
onoremap b /^}<cr>
"Text in next parens when inside on on same line as it starts
onoremap ( :<c-u>normal! f(vi(<cr>
"This does work..and I posted a stack overflow Q on it and everything..shit
onoremap { :<c-u>normal! f{vi{<cr>

"Change 'Leader' key for EasyMotion
let g:EasyMotion_leader_key ='`'

"TODO
"surround non-whitespace on line in quotes
"<c-W> in insert mode to save
