-- https://github.com/pedro757/emmet
-- npm i -g ls_emmet
-- require("lspconfig").emmet_ls.setup({
--   cmd = { "ls_emmet", "--stdio" },
--   filetypes = { "html" },
-- })
return {
	cmd = { "ls_emmet", "--stdio" },
	filetypes = {
		"html",
	},
}
