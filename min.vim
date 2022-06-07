syntax on
set nofoldenable
set background=dark
set nocompatible
filetype plugin on
set tabstop=4
set shiftwidth=4
set smartindent
set mouse=a
set rnu
set nu
set nowrap
set nohlsearch
set noerrorbells
set termguicolors
set hidden
set incsearch
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=8
set encoding=UTF-8
let mapleader = " "
autocmd TermOpen * setlocal nonumber norelativenumber
inoremap <C-h> <C-w>
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
nmap <silent>gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap K :call CocActionAsync('doHover')<cr>
nnoremap <leader>ff <CMD>Telescope find_files theme=ivy<CR>
nnoremap  <leader>gg <cmd>Telescope live_grep theme=ivy<cr>
nmap <C-k> ddkP
vmap <c-k> dkPv
vmap <c-k> dkPv
vmap <c-j> dpv
let g:gruvbox_material_background='hard'
let g:gruvbox_material_palette='original'
command Init :e! ~/.config/nvim/init.vim
call plug#begin()
" themes
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'

" Actual plugins
Plug 'tpope/vim-fugitive'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'cdelledonne/vim-cmake'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'voldikss/vim-floaterm'
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()



lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "cpp", "java", "javascript", "typescript" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'
color gruvbox-material
