call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'Shutnik/jshint2.vim'
Plug 'vim-airline/vim-airline'
" Plug 'terryma/vim-expand-region'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'pangloss/vim-javascript'
" Plug 'jelera/vim-javascript-syntax'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-surround'
" Plug 'vim-scripts/JavaScript-Indent'
" Plug 'gavocanov/vim-js-indent'
" Plug 'othree/yajs.vim'
" Plug 'mxw/vim-jsx'
" Plug 'itspriddle/vim-jquery'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'haya14busa/incsearch.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'wincent/command-t'
" Plug 'moll/vim-node'
Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'quramy/tsuquyomi'
Plug 'jason0x43/vim-js-indent'
" Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'Konfekt/FastFold'
Plug 'tmhedberg/SimpylFold'
call plug#end()
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set wildmenu
set cursorline 
set showmatch
"colorscheme distinguished
set updatetime=250
"set foldmethod=syntax
set foldlevelstart=1
set foldnestmax=20
let g:fastfold_fold_command_suffixes = []
nmap zuz (FastFoldUpdate)
let g:fastfold_savehook = 1
let g:tex_fold_enabled=1
let g:vimsyn_folding='af'
let g:xml_syntax_folding = 1
let g:php_folding = 1
let g:perl_fold = 1
let g:python_fold = 1
map <C-a> <Plug>(easymotion-bd-w)
map <C-e> <Plug>(easymotion-bd-e)
map <C-b> <Plug>(easymotion-b)
map <C-k> <Plug>(easymotion-k)
map <C-j> <Plug>(easymotion-j)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:javascript_enable_domhtmlcss = 1
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let mapleader = "\<Space>"
nnoremap <Leader>n :set number relativenumber<CR>
nnoremap <Leader>n1 :set nonumber norelativenumber<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :wq<CR>
nnoremap <Leader>k :NERDTree<CR>
nnoremap <leader>h :tabprevious<CR>
nnoremap <leader>l :tabprevious<CR>
" nnoremap <Leader>s :SyntasticToggleMode<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>4 $
nmap <Leader>6 ^
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set relativenumber
set number
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
noremap gV `[v`]
nnoremap <space> za
noremap m za
noremap ma zA
function! GetVisual() range
    let reg_save = getreg('"')
    let regtype_save = getregtype('"')
    let cb_save = &clipboard
    set clipboard&
    normal! ""gvy
    let selection = getreg('"')
    call setreg('"', reg_save, regtype_save)
    let &clipboard = cb_save
    return selection
endfunction
vmap <C-r> <Esc>:%s/<c-r>=GetVisual()<cr>//g<left><left>
vmap <C-f> <Esc>/<c-r>=GetVisual()<cr><left>
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()
let g:vim_markdown_folding_disabled=1
set clipboard=unnamed
let g:jsx_ext_required = 0 " Allow JSX in normal JS files


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] 
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

" autocmd BufEnter *.tsx set filetype=typescript
autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
nnoremap <Leader>f :TsuquyomiDefinition<CR>
" nnoremap <Leader>f <Plug>(TsuquyomiDefinition) <CR>
let g:tsuquyomi_definition_split = 2 
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
