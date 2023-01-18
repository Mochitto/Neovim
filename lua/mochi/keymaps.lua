local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation (moving between windows)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- Open explorer on the left, with a width of 30
keymap("n", "<leader>e", ":Lex 30<cr><esc>", opts)
-- Keep cursor centered in the screen when navigating
keymap("n", "j", "jzz", opts)
keymap("n", "k", "kzz", opts)
keymap("n", "G", "Gzz", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<A-l>", ":bnext<CR>", opts)
-- keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- Navigate tabs
keymap("n", "<S-l>", ":tabnext<CR>", opts)
keymap("n", "<S-h>", ":tabprevious<CR>", opts)
keymap("n", "<S-j>", "", opts) -- Added to remove default; super annoying

-- Insert --
-- Auto close ', ", (, [, { and put you inside of them
keymap("i", "'", "''<left>", opts)
keymap("i", "\"", "\"\"<left>", opts)
keymap("i", "(", "()<left>", opts)
keymap("i", "[", "[]<left>", opts)
keymap("i", "{", "{}<left>", opts)
keymap("i", "{", "{<cr>}<esc>O", opts)
keymap("i", "{;", "{<cr>};<esc>O", opts)

-- Visual --
-- Stay in indent mode (you can indent more than once)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Paste yanked without overwriting
keymap("v", "p", '"_dP', opts)

-- Wrap selection in given char
keymap("v", "<leader>'", "`>a'<ESC>`<i'<ESC>", opts)
keymap("v", "<leader>\"", "`>a'<ESC>\"<i\"<ESC>", opts)
keymap("v", "<leader>(", "`>a)<ESC>`<i(<ESC>", opts)
keymap("v", "<leader>[", "`>a]<ESC>`<i[<ESC>", opts)
keymap("v", "<leader>{", "`>a}<ESC>`<i{<ESC>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope --
local status_ok, builtin = pcall(require, "telescope.builtin")
if not status_ok then
    vim.notify("Couldn't load telescope keybindings'")
    return
end
vim.keymap.set('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Trouble keymaps
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  opts
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  opts
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  opts
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  opts
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  opts
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  opts
)
