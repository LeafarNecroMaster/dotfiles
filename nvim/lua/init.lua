set ruler
syntax enable
set cursorline
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set relativenumber
set sw=2
set showmatch
set encoding=utf-8
set showcmd
set laststatus=2
set noshowmode
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set nocompatible

"Used on Coc
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c


"Testing
set wildmenu
set background=dark    " Setting dark mode

if has('nvim')
  call plug#begin(stdpath('data').'/plugged')
else  
  let plugPath = '~/.vim/plugged'
  call plug#begin(plugPath)
endif


"Themes
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

"Plugins
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
"Navegar entre Buffers/paneles
Plug 'christoomey/vim-tmux-navigator' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'AndrewRadev/tagalong.vim'

call plug#end()

colorscheme onehalfdark

let mapleader =" "

"NERDTree Configurations
let NERDTreeQuitOnOpen=1
noremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"coc Configurations
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
inoremap <silent><expr> <c-space> coc#refresh()

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"EasyMotionnnoremap Settings

let g:EasyMotion_smartcase =1
let g:EasyMotion_do_mapping =0
let g:EasyMotion_use_smartsign_us =1

"Search by 2 {char}{char}
"nmap <Leader>f <Plug>(easymotion-s2)
nmap ss <Plug>(easymotion-overwin-f2)
"Search by Word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"Move Anywhere
map  <leader>f <Plug>(easymotion-bd-w)
nmap <leader>f <Plug>(easymotion-overwin-w)
"Move To AnyLine
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
"Search 1 Letter
map <Leader>jj <Plug>(easymotion-bd-t)

map <Leader>9 <Plug>(easymotion-w)
map <leader>8 <Plug>(easymotion-sl)
map <leader>7 <Plug>(easymotion-Fl)

"Move In Line
nmap <Leader>1 <Plug>(easymotion-bd-tl) 

"FZF Configurations
map <leader>fi :Files<CR>
map <leader>bl :BLines<CR>
map <leader>bf :Buffers<CR>
map <leader>l  :Lines<CR>

"General Configurations
map <leader><leader>w :w<CR> 
map <esc><esc> :noh<CR>
map <TAB> <TAB>

"Vim Easy-Align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"CocSQL
xmap <leader><tab> <Plug>(coc-format-selected)
nmap <leader><tab> <Plug>(coc-format-selected)

"Personal Shortcuts
nmap <leader><leader> w :w


let g:lightline ={
  \ 'left': [['mode', 'paste'],
  \          ['filename']],
  \ 'right': [['lineinfo']], }
