set nocompatible
filetype off

call plug#begin($HOME.'/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

Plug 'vimwiki/vimwiki'

Plug 'ludovicchabant/vim-gutentags'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'mileszs/ack.vim'
Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/vimshell.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'mtth/scratch.vim'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-git'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'skywind3000/asyncrun.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'kien/tabman.vim'
Plug 'mbbill/undotree'
Plug 'airblade/vim-rooter'
Plug 'posva/vim-vue'
Plug 'fatih/vim-go'
Plug 'nickhutchinson/vim-cmake-syntax'
call plug#end()

" UI settings
" ===============================================
colorscheme torte
set shortmess+=I
set guioptions-=T
set guioptions-=m
set guifont=Source_Code_Pro:h11
set guifontwide=Source_Code_Pro:h11
let g:netrw_liststyle=1
let g:netrw_sizestyle="h"
" status line
set laststatus=2
let g:lightline = { 'colorscheme': 'wombat'}
if has("gui_running")
  " maximize gvim win
  set lines=9999 columns=9999
  if has("win32")
    au GUIEnter * simalt ~x
  endif
endif

" Editor settings
" ===============================================
filetype plugin indent on
set clipboard=unnamed
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set noeb vb t_vb=
set encoding=utf-8
set autochdir
set hlsearch
set gcr=a:block-blinkon0
set virtualedit=block
set nu
set rnu
set foldmethod=manual
set foldlevel=99
set directory=$HOME/.vim/swp//
set cm=blowfish2
syntax on
if (has("unix"))
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    map <F2> :.w !pbcopy<CR><CR>
    map <F3> :r !pbpaste<CR>
  endif
endif

" dev tools
" ===============================================
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTreeToggle .<CR>
nmap <C-S> :update<CR>
let g:gist_get_multiplefile = 1
let g:gist_post_private = 1
let g:gist_show_private = 1
let g:gistvim_namelength = 30
let g:snipMate = get(g:, 'snipMate', {})
let g:snipMate = { 'snippet_version' : 1 }
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
let g:asyncrun_open = 8
let g:rooter_silent_chdir = 1
let g:rooter_cd_cmd="lcd"
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn
set wildignore+=*.so,*.a,*.dll,*.lib,*.o,*.obj,*.class,*.pyc
set wildignore+=node_modules
if executable('pt')
  let g:ackprg = 'pt --context=0 --nocolor --nogroup --column'
endif

" dev settings - py 
autocmd FileType python set ts=2|set sw=2|set sts=2|set expandtab
" dev settings - javascript 
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType json set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
" dev settings - syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npx eslint'
let g:jsx_ext_required = 1

" vimwiki
" ===============================================
let g:vimwiki_use_mouse = 1
let g:vimwiki_table_auto_fmt = 0
let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr,div,center,strong,em,img'
let g:vimwiki_toc_header = 'TOC'
let g:vimwiki_list = [
   \ { 'path': $_dropbox_root.'/wiki/note',
   \   'path_html': $_dropbox_root.'/wiki/_dist_note',
   \   'template_path': $_dropbox_root.'/wiki/_template',
   \   'template_default': 'vimwiki',
   \   'template_ext': '.tpl',
   \   'auto_export':0},
   \ { 'path': $_github_root.'/ashen-one/content',
   \   'path_html': $_github_root.'/ashen-one/dist',
   \   'template_path': $_github_root.'/ashen-one/config/',
   \   'template_default': 'vimwiki',
   \   'template_ext': '.tpl',
   \   'auto_toc': 0,
   \   'auto_export':0},
   \ { 'path': $_github_root.'/recycle.bin/_content',
   \   'path_html': $_github_root.'/recycle.bin/output',
   \   'template_path': $_github_root.'/recycle.bin/_config/',
   \   'template_default': 'vimwiki',
   \   'template_ext': '.tpl',
   \   'auto_export':0},
   \ { 'path': $_dropbox_root.'/wiki/wrk',
   \   'path_html': $_dropbox_root.'/wiki/_dist_wrk',
   \   'template_path': $_dropbox_root.'/wiki/_template',
   \   'template_default': 'vimwiki',
   \   'template_ext': '.tpl',
   \   'auto_export':0}
   \ ]

" functions
" ===============================================
nnoremap <Leader>mt "=strftime("%c")<CR>P
nnoremap <Leader>md "=strftime("%a %d %b %Y")<CR>P

" ctags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
if !isdirectory(s:vim_tags)
  silent! call mkdir(s:vim_tags, 'p')
endif
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" fzf
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

" leaderf
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
