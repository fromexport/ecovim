return{
	'nvim-telescope/telescope.nvim', tag = '0.1.6',
	dependencies = { 
		'nvim-lua/plenary.nvim', 
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		require("telescope").setup {
			defaults = {
				file_ignore_patterns = {
					"node_modules",
				},
			}

		}
    local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<C-f>", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		vim.keymap.set(
			"n",
			"<leader>ds",
			require("telescope.builtin").lsp_document_symbols,
			{ desc = "[D]ocument [S]ymbols" }
		)
		 vim.keymap.set('n', '<leader>sn', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[S]earch [N]eovim files' })
		 vim.keymap.set('n', '<leader>nn', function()
        builtin.find_files { cwd = '~/Documents/notes' }
      end, { desc = '[S]earch [N]eovim files' })

  end
}
