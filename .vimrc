" === General 
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set noeb vb t_vb=
set encoding=utf-8
set autochdir

" === general GUI settings
colorscheme torte
set shortmess+=I
" set cursorline
set guioptions-=T
set guioptions-=m
set clipboard=unnamed
if has("gui_running")
	" Maximize gvim window.
	set lines=9999 columns=9999
endif
" Status bar
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ 
                \[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]


" NERDTree 
let NERDTreeShowBookmarks=1

" === For MS Windows
if (has("win32"))
    " VimTweak
    if (has("gui_running"))
        command -nargs=1 SetAlpha call libcallnr("vimtweak.dll",
            \"SetAlpha", <args>)
        command -nargs=0 TopMost call libcallnr("vimtweak.dll",
            \"EnableTopMost", 1)
        command -nargs=0 NoTopMost call libcallnr("vimtweak.dll",
            \"EnableTopMost", 0)
    endif
	au GUIEnter * simalt ~x "x on an English Windows version. n on a French one
    nmap <F4> :SetAlpha 200 <CR>
    nmap <C-F4> :SetAlpha 250 <CR>
    nmap <F5> :TopMost <CR>
    nmap <C-F5> :NoTopMost <CR>
endif

" === For Unix
if (has("unix"))
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        " For OSX
        map <F2> :.w !pbcopy<CR><CR>
        map <F3> :r !pbpaste<CR>
    endif 
endif

" === DEV
set foldmethod=indent
set foldlevel=99
let g:snippets_dir='$HOME/.vim/snippets'
filetype plugin on

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" === wiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path':'$HOME/datum/wiki/vimwiki', 
                      \'path_html':'$HOME/datum/wiki/html',}]

" === key map 
nmap <C-N> :NERDTreeToggle <CR>
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
		\set guioptions-=T <Bar>
		\set guioptions-=m <Bar>
	\else <Bar>
		\set guioptions+=T <Bar>
		\set guioptions+=m <Bar>
	\endif<CR>

