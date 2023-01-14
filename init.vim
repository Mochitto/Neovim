"Base configuration"
set number
set relativenumber
set scrolloff=10
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

"Color settings"
set termguicolors
colorscheme aura

"Plugins configuration"
lua require("plugins")
