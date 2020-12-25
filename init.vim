set nocompatible
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" A collection of language packs for Vim
Plug 'sheerun/vim-polyglot'

" ruby and rails
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'dense-analysis/ale'
Plug 'andymass/vim-matchup'

" git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" common
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'

" theme
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" search files
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

Plug 'honza/vim-snippets'

Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'preservim/tagbar'

" frontend
" Plug 'posva/vim-vue'
Plug 'ap/vim-css-color'

Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

" basic 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set hidden
set cmdheight=2
" set shortmess=aFc
set shortmess+=c
" always show signcolumns
set signcolumn=yes
set mouse=a
let mapleader=" "
syntax on
colorscheme gruvbox
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11
set cursorline
set hls
set incsearch
set ignorecase
set nu
set guioptions=a
" default updatetime 4000ms is not good for async update
set updatetime=1000
set so=7
noremap <CR> :
noremap <C-a> ggv<C-END>
vnoremap <C-c> "+y
inoremap <C-s> <ESC>:w<CR>a
nnoremap <C-s> :w<CR>
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
" nnoremap <F5> Obinding.pry<ESC>
" nnoremap <S-F5> :%s/^\s*binding\.pry\s*\n//g<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "始终开启标志列
" let g:ale_sign_column_always = 1
" let g:ale_set_highlights = 0
" "自定义error和warning图标
" let g:ale_sign_warning = '!'
" let g:ale_sign_error = '✘'
" 
" "在vim自带的状态栏中整合ale
" let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
" "显示Linter名称,出错或警告等相关信息
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" "普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
" nmap sp <Plug>(ale_previous_wrap)
" nmap sn <Plug>(ale_next_wrap)
" let g:ale_enabled = 0
" "<Leader>s触发/关闭语法检查
" nmap <Leader>s :ALEToggle<CR>
" "<Leader>d查看错误或警告的详细信息
" nmap <Leader>d :ALEDetail<CR>
" 
" "使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
" let g:ale_linters = {
" \   'c++': ['clang'],
" \   'c': ['clang'],
" \   'python': ['pylint'],
" \   'ruby': ['rubocop'],
" \}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=45

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LeaderF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" don't show the help in normal mode
" noremap <leader-f> :LeaderF file<CR>
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_DefaultExternalTool = "rg"
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PopupPosition = [1, 0]
let g:Lf_PopupHeight = 0.3
let g:Lf_PopupPreviewPosition = "bottom"
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_PreviewResult = {
            \ 'File': 1,
            \ 'Buffer': 1,
            \ 'Mru': 1,
            \ 'Tag': 1,
            \ 'BufTag': 1,
            \ 'Function': 1,
            \ 'Line': 1,
            \ 'Colorscheme': 1,
            \ 'Rg': 1,
            \ 'Gtags': 1
            \}
let g:Lf_PreviewInPopup = 1
let g:Lf_RgHighlightInPreview = 1
noremap <A-P> :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>ff :<C-U><C-R>=printf("Leaderf function %s", "")<CR><CR>
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>frg :<C-U><C-R>=printf("Leaderf rg %s", "")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indentLine 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '┊'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_global_extensions = [
            \ 'coc-solargraph',
            \ 'coc-tsserver',
            \ 'coc-html',
            \ 'coc-css',
            \ 'coc-json',
            \ 'coc-snippets']
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
" map <C-]> :call CocActionAsync('jumpDefinition')<CR>
" nmap <F12> :call coc#config("diagnostic.virtualText", "true")<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#coc#enabled = 1
let g:airline_theme='base16_google'
let g:airline_powerline_fonts = 1   
let g:airline#extensions#coc#enabled = 1
"设置切换Buffer快捷键"
nnoremap <S-C-right> :bn<CR>
nnoremap <S-C-left> :bp<CR>

""""""""""" snippet """""""""""
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" tagbar
nmap <F8> :TagbarToggle<CR>

" floaterm
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width=1.0
let g:floaterm_height=1.0
let g:floaterm_position='top'
