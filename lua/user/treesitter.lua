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
		"css",
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
	rainbow = {
		enable = true,
		colors = {
			"#68a0b0",
			"#946EaD",
			"#c7aA6D",
			-- "Gold",
			-- "Orchid",
			-- "DodgerBlue",
			-- "Cornsilk",
			-- "Salmon",
			-- "LawnGreen",
		},
		disable = { "html" },
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
