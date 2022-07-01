local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
require("user.lsp.lsp-signature")

-- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
