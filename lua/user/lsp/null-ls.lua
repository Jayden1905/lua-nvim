local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.prettier,
	formatting.black,
	formatting.isort,
	formatting.google_java_format,
	formatting.fixjson,
	formatting.stylua,
	formatting.dart_format,
}

null_ls.setup({
	sources = sources,

	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
            augroup END
            ]])
		end
	end,
})
