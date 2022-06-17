require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = true,
		disable = {},
	},
	ensure_installed = {
		"tsx",
		"toml",
		"fish",
		"json",
		"yaml",
		"html",
		"scss",
		"swift",
		"java",
		"python",
		"javascript",
		"typescript",
		"vue",
		"lua",
		"vim",
	},
	autotag = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
