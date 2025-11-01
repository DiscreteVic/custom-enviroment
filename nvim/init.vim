syntax on
colorscheme tokyonight
set termguicolors
highlight Normal guibg=NONE ctermbg=NONE
highlight NormalNC guibg=NONE ctermbg=NONE


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l



nnoremap <C-s> :split<CR>
nnoremap <C-v> :vsplit<CR>


" Needed
" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" After that execute :PlugInstall on nvim

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons' " opcional, iconos

Plug 'akinsho/toggleterm.nvim', {'tag': '*'}

call plug#end()

" Nvim tree
lua << EOF
require("nvim-tree").setup()
EOF

nnoremap <C-n> :NvimTreeToggle<CR>

" Toggleterm
lua << EOF
require("toggleterm").setup({
	direction = "horizontal"
})
EOF

nnoremap <leader>tt :ToggleTerm<CR>
tnoremap <Esc> <C-\><C-n>

