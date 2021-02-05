" Call the .vimrc.plug file

if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

filetype plugin on

let g:indent_guides_guide_size=1
let g:indent_guides_color_change_percent=3
let g:indent_guides_enable_on_vim_startup=1

let g:AutoClosePairs = ""

"Vimspector preferences
"let g:vimspector_enable_mappings = 'HUMAN'

"Script for using enter to highlight all instances of a word
let g:highlighting = 0
function! Highlighting()
  if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
    let g:highlighting = 0
    return ":silent nohlsearch\<CR>"
  endif
  let @/ = '\<'.expand('<cword>').'\>'
  let g:highlighting = 1
  return ":silent set hlsearch\<CR>"
endfunction
nnoremap <silent> <expr> <CR> Highlighting()

"Theming
set laststatus=2
let g:lightline={
    \'colorscheme': 'wombat',
    \'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'filename', 'modified', 'charvaluehex' ] ]
    \},
    \'component': {
    \   'charvaluehex': '0x%B'
    \},
    \}
    
map <C-o> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
inoremap jk <ESC>
nnoremap n nzz
nnoremap N Nzz

"Split maps
set splitbelow
set splitright

"Tab maps
nnoremap <C-W>t :tabnew<CR>
nnoremap <C-L> :tabn<CR>
nnoremap <C-H> :tabp<CR>

"Tabbing
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set cursorline
set cursorcolumn
set scrolloff=10
"set autoindent
"set textwidth=10

"Color
hi MatchParen guibg=NONE guifg=red gui=bold 
set termguicolors
syntax enable
set background=dark
colorscheme rigel
let g:rigel_lightline = 1
let g:lightline = { 'colorscheme': 'rigel' }

let g:rigel_airline = 1
let g:airline_theme = 'rigel'

