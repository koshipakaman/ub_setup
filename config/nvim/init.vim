set tabstop=4
set expandtab
set shiftwidth=4
set nosmartindent
set number

set noshowmode
set list
set listchars=tab:»-
set clipboard+=unnamedplus
set wrap

filetype plugin on

" move
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

" SplitTerm
nnoremap  t  :SplitTerm<CR>i

" Tagbar
nmap <F8> :TagbarToggle<CR>

" nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" terminal esc
tnoremap <ESC> <C-\><C-n>

" window move keymap
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-w> <C-w>w


" ALE
nmap <Space>p <Plug>(ale_previous)
nmap <Space>n <Plug>(ale_next)
"nmap <Subleader>a <Plug>(ale_toggle)

" deoplete
let g:deoplete#enable_at_startup = 1

let g:deoplete#enable_completion_start_length = 1

let g:deoplete#source#jedi#server_timeout=100
let g:deoplete#source#jedi#statement_length=100

inoremap <expr><CR> pumvisible() ? deoplete#close_popup() : "<CR>"
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" neosnippet
let g:neosnippet#snippets_directory = '$HOME/.vim/snippets/'
inoremap <expr><tab> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"

" ctrl + s target jump
imap <C-f> <Plug>(neosnippet_expand_or_jump)
smap <C-f> <Plug>(neosnippet_expand_or_jump)
xmap <C-f> <Plug>(neosnippet_expand_target)
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif


"au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
" pdftotext
augroup MyAutoCmd
    if executable('pdftotext')
        " PDFファイルを開いた時、text形式に変換してから開く
        autocmd BufRead *.pdf :enew | 0read !pdftotext -layout -nopgbrk "#" -
    endif
augroup END

" airline
" let g:airline_theme = "badwolf"
let g:airline_theme = "onedark"
let g:airline_powerline_fonts = 1

" エラー行に表示するマーク
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
" エラー行にカーソルをあわせた際に表示されるメッセージフォーマット
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" エラー表示の列を常時表示
let g:ale_sign_column_always = 1

" ファイルを開いたときにlint実行
let g:ale_lint_on_enter = 0
" ファイルを保存したときにlint実行
let g:ale_lint_on_save = 1
" 編集中のlintはしない
let g:ale_lint_on_text_changed = 'never'

" lint結果をロケーションリストとQuickFixには表示しない
" 出てると結構うざいしQuickFixを書き換えられるのは困る
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0

" 有効にするlinter
let g:ale_linters = {
\   'python': ['flake8'],
\}


" vim orgmode
let maplocalleader = ","


" let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk = {
      \ 'background': 1,
      \ 'build_dir': '',
      \ 'continuous': 1,
      \ 'options': [
      \    '-pdfdvi',
      \    '-verbose',
      \    '-file-line-error',
      \    '-synctex=1',
      \    '-interaction=nonstopmode',
      \],
      \}

" let g:vimtex_quickfix_latexlog = 1
" let g:latex_fold_enabled = 0
" let g:latax_view_method = 'general'
let g:vimtex_view_general_viewer = 'mupdf'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'

let g:latex_toc_split_pos = "topleft"
let g:latex_toc_width = 10

let g:tex_conceal = ''


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "
  " Shougo
  " call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})

  " vim script
  call dein#add('Shougo/neco-vim')
  call dein#add('Shougo/neco-syntax')
  call dein#add('ujihisa/neco-look')

  " general
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/unite.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-speeddating')
  call dein#add('thinca/vim-quickrun')

  " deoplete
  call dein#add('deoplete-plugins/deoplete-jedi')

  " close tag
  call dein#add('Townk/vim-autoclose')
  call dein#add('alvan/vim-closetag')

  " calendar
  call dein#add('itchyny/calendar.vim')

  " airline (status bar)
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " color scheme
  call dein#add('joshdick/onedark.vim')

  " tex
  call dein#add('lervag/vimtex')
  " call dein#add('vim-latex/vim-latex')

  " IME (fcitx)
  call dein#add('vim-scripts/fcitx.vim')



  " programming env
  call dein#add('scrooloose/nerdtree')
  call dein#add('majutsushi/tagbar')

  call dein#add('szkny/SplitTerm')
  " call dein#add('szkny/Ipython')

  "" Ale
  call dein#add('w0rp/ale')

  "" git
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')


  "" language server protocol
  "call dein#add('prabirshrestha/async.vim')
  "call dein#add('prabirshrestha/vim-lsp')
  "

  " white space, indent
  " :FixWhitespace
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('Yggdroot/indentLine')


  " org-mode
  call dein#add('jceb/vim-orgmode')

  " universal text linking
  call dein#add('vim-scripts/utl.vim')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " python debug
  call dein#add('puremourning/vimspector')


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
"filetype plugin indent on
"call pathopen#infect()
filetype plugin indent on
"syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
"
"
syntax on
colorscheme onedark
