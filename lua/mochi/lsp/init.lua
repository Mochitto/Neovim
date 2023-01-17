local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "mochi.lsp.mason"
require("mochi.lsp.handlers").setup()
require "mochi.lsp.null-ls"
