return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	enabled = true,
	config = function()
		require("tokyonight").setup({
			style = "moon",
			styles = {
				-- Style to be applied to different syntax groups
				-- Value is any valid attr-list value for `:help nvim_set_hl`
				comments = { italic = false },
				keywords = { italic = false },
				functions = {},
				variables = {},
				-- Background styles. Can be "dark", "transparent" or "normal"
	 			-- sidebars = "dark", -- style for sidebars, see below
				-- floats = "dark", -- style for floating windows
			},
		})

		require("tokyonight").setup({
			on_highlights = function(hl)
				hl.TelescopePromptTitle = {
					fg = "#808080",
				}
				hl.TelescopeBorder = {
					fg = "#808080",
				}
				hl.TelescopePromptBorder = {
					fg = "#808080",
				}
			end,
		})
		vim.cmd[[colorscheme tokyonight-moon]]
	end,
}

