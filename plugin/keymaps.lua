vim.keymap.set("t","<C-c>c","<C-\\><C-n>")
vim.keymap.set("t","<Esc>","<C-\\><C-n>")

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set("n", "<M-i>", "<c-w>5<")
vim.keymap.set("n", "<M-s>", "<c-w>5>")
vim.keymap.set("n", "<M-,>", "<C-W>+")
vim.keymap.set("n", "<M-;>", "<C-W>-")
vim.keymap.set("n","<leader>g","g<C-]>")
vim.keymap.set("n","gd","<C-]>")
