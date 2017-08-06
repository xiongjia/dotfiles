set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/vundle.vim
call vundle#begin()

" Misc
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'

" DEV Tools
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mileszs/ack.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-syntastic/syntastic'
Plugin 'pangloss/vim-javascript'

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
  au GUIEnter * simalt ~x
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
set tabstop=4
set shiftwidth=4
set expandtab
set noeb vb t_vb=
set encoding=utf-8
set autochdir
set hlsearch
set gcr=a:block-blinkon0
set nu
set rnu
syntax on

" dev tools
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTreeToggle .<CR>

" dev - js
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab

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
