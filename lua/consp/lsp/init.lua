local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "consp.lsp.mason"
require("consp.lsp.handlers").setup()
require "consp.lsp.null-ls"