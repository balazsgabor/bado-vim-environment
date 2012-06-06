syntax on
set autoindent
set smartindent
set cindent

set noexpandtab
set tabstop=8
set shiftwidth=8
set softtabstop=8

set hlsearch
set nocp
set foldmethod=manual
set foldnestmax=2
set nofoldenable

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [%l,\ %v][%p%%]\ [LEN=%L]

set history=500
set visualbell t_vb=    " Use null visual bell (no beeps or flashes).


if has("gui_running")
  "set textwidth=78
  "set guifont=Monospace\ 8
  set go=aeigr
  set columns=140 lines=54
  set showbreak=…
  "colorscheme ir_black
  colorscheme macvim
  highlight Normal guibg=black
endif

" set list
" set listchars=tab:>.
set ignorecase

set wildmenu                    " Use menu for completions
set wildmode=full

" Center the display line after searches. (This makes it *much* easier to see
" the matched line.)
"
" More info: http://www.vim.org/tips/tip.php?tip_id=528
"
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#zz

filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

function IndentWithTab ()
  set noexpandtab
  set tabstop=8
  set shiftwidth=8
  set softtabstop=8
endfunction

function IndentWithSpace ()
  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
endfunction

call pathogen#infect()

" Toggle the NERD Tree window
nnoremap ,.  :NERDTreeToggle<CR>

let NERDChristmasTree=0
let NERDTreeHighlightCursorline=1


" Close current buffer without closing window.
command! Bd enew<Bar>bd #


" cmd + motion commands to move in display lines
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

" ,ew <file>: edit <file> in the current file's directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map ,ew :e %%
map ,es :sp %%
map ,ev :vsp %%
map ,et :tabe %%

" Change tabs
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprevious<CR>
