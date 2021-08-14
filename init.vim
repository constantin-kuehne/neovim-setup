set path+=**

call plug#begin('~/.vim/plugged')

" Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Telescope + requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" lsp (language server protocol)
Plug 'neovim/nvim-lspconfig'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fugitive (a git plugin)
Plug 'tpope/vim-fugitive'

call plug#end()

" lsp config
luafile C:/Users/const/AppData/Local/nvim/lsp.lua

syntax on

colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE

let mapleader = " " " map leader to Space
let g:airline#extensions#tabline#enabled = 1 " set buffer tabbing on
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled=1

set number
set relativenumber

vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
