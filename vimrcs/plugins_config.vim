""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

" Quickly find and open a file in the current working directory
let g:ctrlp_map = '<C-f>'
map <leader>j :CtrlP<cr>

" Quickly find and open a buffer
map <leader>b :CtrlPBuffer<cr>

" Quickly find and open a recently opened file
map <leader>f :CtrlPMRU<CR>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""""
" => emmet-vim
""""""""""""""""""""""""""""""
" Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Redefine trigger key
let g:user_emmet_leader_key='<C-Z>'

""""""""""""""""""""""""""""""
" => ultisnips (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Avoid crashes when calling vim-plug functions while the cursor is on the NERDTree window
let g:plug_window = 'noautocmd vertical topleft new'

" Show dot files
let NERDTreeShowHidden=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree git-plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Visual-multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:VM_maps = {}
" let g:VM_maps['Find Under']         = '<C-m>'           " replace C-n
" let g:VM_maps['Find Subword Under'] = '<C-m>'           " replace visual C-n
" let g:VM_maps["Add Cursor Down"]             = '<C-Down>'
" let g:VM_maps["Add Cursor Up"]               = '<C-Up>'
" let g:VM_maps["Find Next"]                   = ']'
" let g:VM_maps["Find Prev"]                   = '['
" let g:VM_maps["Goto Next"]                   = '}'
" let g:VM_maps["Goto Prev"]                   = '{'
" let g:VM_maps["Seek Next"]                   = '<C-f>'
" let g:VM_maps["Seek Prev"]                   = '<C-b>'
" let g:VM_maps["Skip Region"]                 = 'q'
" let g:VM_maps["Remove Region"]               = 'Q'
" let g:VM_maps["Invert Direction"]            = 'o'
" let g:VM_maps["Find Operator"]               = 'm'
" let g:VM_maps["Surround"]                    = 'S'
" let g:VM_maps["Replace Pattern"]             = 'R'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

let g:airline_theme= 'solarized'
let g:airline_solarized_bg='dark'

" Smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tagbar#enabled = 1

" Dynamically change accent of a vim-airline section
augroup vimrc
" Auto rebuild C/C++ project when source file is updated, asynchronously
autocmd BufWritePost *.c,*.cpp,*.h
    \ let dir=expand('<amatch>:p:h') |
	\ if filereadable(dir.'/Makefile') || filereadable(dir.'/makefile') |
    \   execute 'AsyncRun -cwd=<root> make -j8' |
    \ endif
" Auto toggle the quickfix window
autocmd User AsyncRunStop
    \ if g:asyncrun_status=='failure' |
    \   execute('call asyncrun#quickfix_toggle(8, 1)') |
    \ else |
    \   execute('call asyncrun#quickfix_toggle(8, 0)') |
    \ endif
augroup END

" Define new accents
function! AirlineThemePatch(palette)
" [ guifg, guibg, ctermfg, ctermbg, opts ].
" See "help attr-list" for valid values for the "opt" value.
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
	let a:palette.accents.running = [ '', '', '', '', '' ]
	let a:palette.accents.success = [ '#00ff00', '' , 'green', '', '' ]
	let a:palette.accents.failure = [ '#ff0000', '' , 'red', '', '' ]
endfunction
let g:airline_theme_patch_func = 'AirlineThemePatch'

" Change color of the relevant section according to g:asyncrun_status, a global variable exposed by AsyncRun
" 'running': default, 'success': green, 'failure': red
let g:async_status_old = ''
function! Get_asyncrun_running()
    let async_status = g:asyncrun_status
    if async_status != g:async_status_old
        if async_status == 'running'
            call airline#parts#define_accent('asyncrun_status', 'running')
		elseif async_status == 'success'
			call airline#parts#define_accent('asyncrun_status', 'success')
		elseif async_status == 'failure'
			call airline#parts#define_accent('asyncrun_status', 'failure')
		endif
		let g:airline_section_x = airline#section#create(['asyncrun_status'])
" AirlineRefresh
		let g:async_status_old = async_status
	endif
	return async_status
endfunction

call airline#parts#define_function('asyncrun_status', 'Get_asyncrun_running')
let g:airline_section_x = airline#section#create(['asyncrun_status'])


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => asyncrun.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:asyncrun_open = 6
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f9> :AsyncTask file-build<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Goyo.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gitgutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarOpenAutoClose<CR>
