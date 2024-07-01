-- sudo snap install universal-ctags
vim.api.nvim_create_user_command('Maketags', '!ctags -R .', {})
