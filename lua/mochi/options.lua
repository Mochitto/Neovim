-- :help options
local options = {
    backup = false,                                     -- creates a backup file
    cmdheight = 1,                                      -- more space in the neovim command line for displaying messages
    completeopt = { "menuone", "noselect", "preview" }, -- mostly just for cmp
    conceallevel = 0,                                   -- so that `` is visible in markdown files
    fileencoding = "utf-8",                             -- the encoding written to a file
    hlsearch = true,                                    -- highlight all matches on previous search pattern
    mouse = "a",                                        -- allow the mouse to be used in neovim
    pumheight = 10,                                     -- pop up menu height
    showmode = true,                                    -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,                                    -- always show tabs
    ignorecase = true,                                  -- ignore case in search patterns
    smartcase = true,                                   -- smart case (override ignorecase if there's capitals in search)
    smartindent = true,                                 -- make indenting smarter again
    splitbelow = true,                                  -- force all horizontal splits to go below current window
    splitright = true,                                  -- force all vertical splits to go to the right of current window
    swapfile = true,                                    -- creates a swapfile
    termguicolors = true,                               -- set term gui colors (most terminals support this)
    timeoutlen = 1000,                                  -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,                                    -- enable persistent undo
    updatetime = 750,                                   -- faster completion (4000ms default)
    expandtab = true,                                   -- convert tabs to spaces
    shiftwidth = 4,                                     -- the number of spaces inserted for each indentation
    tabstop = 4,                                        -- insert 4 spaces for a tab
    cursorline = true,                                  -- highlight the current line
    number = true,                                      -- set numbered lines
    relativenumber = true,                              -- set relative numbered lines
    numberwidth = 4,                                    -- set number column width to 2 {default 4}
    signcolumn = "auto",                                -- always show the sign column, otherwise it would shift the text each time
    wrap = false,                                       -- allow for wrapping of lines
    scrolloff = 10,                                     -- minimum number of lines to keep above and below the cursor
    sidescrolloff = 10,
    list = true,
}

vim.opt.shortmess:append "c"                            -- has to do with autocompletion

vim.cmd[[filetype plugin indent on]]                -- If there is a file with specific indents, use those options
for key, value in pairs(options) do
    vim.opt[key] = value
end

-- Don't know how to set with lua
vim.cmd [[set listchars=tab:×·,trail:·]]                -- show tabs and trail characters with the specified char
vim.cmd [[hi CursorLine guibg=gray18]]                  -- Clear the cursorLine and apply an underline instead of highlight (probably aura specific)
vim.cmd [[set iskeyword+=-]]                            -- words-like-this are recognized as a single word (can use wi/ciw)

-- Netrw options
vim.cmd [[let g:netrw_liststyle= 3]]
