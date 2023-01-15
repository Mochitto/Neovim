"Base configuration"
set number
set relativenumber
set scrolloff=10
"Remaps"
"Keep cursor centered in the screen when navigating"
nnoremap j jzz 
nnoremap k kzz
nnoremap G Gzz
"Auto close \", ', (, [, {"
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Color settings"
set termguicolors
colorscheme aura

"Plugins configuration"
lua require("plugins")
