set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/vundle.vim
call vundle#begin()

" Misc
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'
Plugin 'mhinz/vim-startify'

" DEV Tools
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mileszs/ack.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-syntastic/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'ervandew/eclim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'mtth/scratch.vim'
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-git'
Plugin 'junegunn/fzf'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'MattesGroeger/vim-bookmarks'

if (has("unix"))
  Plugin 'Valloric/YouCompleteMe'
endif

" syntax
Plugin 'nickhutchinson/vim-cmake-syntax'

call vundle#end()

" UI Settings
colorscheme Tomorrow-Night-Bright
set shortmess+=I
set guioptions-=T
set guioptions-=m
set guifont=Source_Code_Pro:h11
set guifontwide=Source_Code_Pro:h11
if has("gui_running")
  " maximize gvim win
  set lines=9999 columns=9999
  if has("win32")
    au GUIEnter * simalt ~x
  endif
endif

" status line
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }

" Editor settings
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
    let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
  endif
endif

" dev tools
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTreeToggle .<CR>
nmap <C-S> :update<CR>
let g:gist_get_multiplefile = 1
let g:gist_post_private = 1
let g:gist_show_private = 1
let g:gistvim_namelength = 30
let g:snipMate = get(g:, 'snipMate', {})
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
let g:asyncrun_open = 8

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

" enable it if you need debug it: let g:syntastic_debug=3 
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npx eslint'
let g:jsx_ext_required = 1

" vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_table_auto_fmt = 0
let g:vimwiki_valid_html_tags =
  \ 'b,i,s,u,sub,sup,kbd,br,hr,div,center,strong,em,img'

let g:vimwiki_list = [
  \ {'path': $_dropbox_root.'/wiki/note',
  \  'path_html': $_dropbox_root.'/wiki/_dist_note',
  \  'template_path': $_dropbox_root.'/wiki/_template',
  \  'template_default': 'vimwiki',
  \  'template_ext': '.tpl',
  \  'auto_export':0},
  \ {'path': $_github_root.'/recycle.bin/_content',
  \  'path_html': $_github_root.'/recycle.bin/output',
  \  'template_path': $_github_root.'/recycle.bin/_config/',
  \  'template_default': 'vimwiki',
  \  'template_ext': '.tpl',
  \  'auto_export':0},
  \ {'path': $_dropbox_root.'/wiki/wrk',
  \  'path_html': $_dropbox_root.'/wiki/_dist_wrk',
  \  'template_path': $_dropbox_root.'/wiki/_template',
  \  'template_default': 'vimwiki',
  \  'template_ext': '.tpl',
  \  'auto_export':0}
  \ ]

" functions
nnoremap <Leader>mt "=strftime("%c")<CR>P
nnoremap <Leader>md "=strftime("%a %d %b %Y")<CR>P
