return{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
			ensure_installed = { 
				"c", 
				"cpp",
				"lua", 
				"luadoc", 
				"vim", 
				"vimdoc", 
				"query",
				"bash",
				"dockerfile",
				"make",
				"markdown",
				"yaml",
				"python",
				"javascript",
				"jsdoc",
				"json",
				"typescript",
				"html",
				"css",
				"go",
			},
			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,
			auto_install = true,
			ignore_install = { },
			highlight = {
				enable = true,
				disable = {  },
			},
		}
}

