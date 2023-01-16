"Base configuration"
set number
set relativenumber
set scrolloff=10

"Remaps"
"Set leader key"
let mapleader = " "

"Keep cursor centered in the screen when navigating"
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

"Wrap in given character"
"Notice: vnoremap is both for visual line and visual mode. xnoremap is just
"visual mode.
vnoremap <leader>( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap <leader>[ <ESC>`>a]<ESC>`<i[<ESC>
vnoremap <leader>{ <ESC>`>a}<ESC>`<i{<ESC>
vnoremap <leader>' <ESC>`>a'<ESC>`<i'<ESC>
vnoremap <leader>" <ESC>`>a"<ESC>`<i"<ESC>

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

"Set tab to be equal to four spaces"
"If there is a file with specific indents, use those options"
filetype plugin indent on
"Show tabs with X spaces' width.
"For some reason, if left to 8, tab inserts 8 spaces when between words
set tabstop=4
"Set indents to be four space characters
set shiftwidth=4
"Expand tab into spaces (in our case, four spaces)
set expandtab

"Visualize tabs and trailing chars"
set list
set listchars=tab:×·,trail:·

"Plugins configuration"
lua require("plugins")
lua require("user.mason")
lua require("user.mason-lspconfig")
lua require("user.lspconfig")

