vim.g.mapleader = " "
vim.g.maplocalleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = "lazyplugins"
local opts = {
	ui = {
		cmd = " ",
		config = "",
		event = " ",
		ft = " ",
		init = " ",
		import = " ",
		keys = " ",
		lazy = "󰒲 ",
		loaded = "●",
		not_loaded = "○",
		plugin = " ",
		runtime = " ",
		require = "󰢱 ",
		source = " ",
		start = " ",
		task = "✔ ",
		list = {
			"●",
			"➜",
			"★",
			"‒",
		},
	},
	change_detection = {
		-- automatically check for config file changes and reload the ui
		enabled = false,
		notify = false, -- get a notification when changes are found
	},
}

require("lazy").setup(plugins, opts)

