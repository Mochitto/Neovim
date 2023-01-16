-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
    use ('wbthomason/packer.nvim') -- Packer can manage itself
    use {
        "williamboman/mason.nvim", -- LSP, linters and formatters manager
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig", -- Configurations for Nvim LSP
    }
    use ('helbing/aura.nvim') -- Aura theme
end)
