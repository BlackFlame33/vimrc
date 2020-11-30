" vim-plug
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'

" Chinese vim help
Plug 'yianwillis/vimcdoc'

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

" Class outline viewer
Plug 'preservim/tagbar',{'on': 'TagbarOpenAutoClose'}

call plug#end()

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
