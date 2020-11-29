" Line number
set number
set relativenumber

" DIY cursor style
set nrformats=
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Use mouse to move
set mouse=a

" Quick move
noremap J 5j
noremap K 5k


" vim-plug
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'gcmt/wildfire.vim'
Plug 'zxqfl/tabnine-vim'
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mileszs/ack.vim', {'on': 'Ack'}
Plug 'jlanzarotta/bufexplorer'
Plug 'yegappan/mru'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim',{'for':['html','css','js','jsp']}

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" File system explorer
Plug 'preservim/nerdtree' |
	\ Plug 'Xuyuanp/nerdtree-git-plugin' |
    \ Plug 'ryanoasis/vim-devicons' ,{'on': 'NERDTreeToggle'}

Plug 'tpope/vim-surround'

" status/tabline for vim
Plug 'vim-airline/vim-airline' |
    \ Plug 'vim-airline/vim-airline-themes'

" Run shell commands in background
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" for Git
Plug 'tpope/vim-fugitive'

" Start screen
Plug 'mhinz/vim-startify'

Plug 'Yggdroot/indentLine'

" Distraction-free writing
Plug 'junegunn/goyo.vim' |
            \ Plug 'junegunn/limelight.vim' ,{'on': 'Goyo'}

" Asynchronous Lint Engine
Plug 'dense-analysis/ale'

" Git diff
Plug 'airblade/vim-gitgutter', {'on': 'GitGutterToggle'}

" Markdown
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

call plug#end()

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
