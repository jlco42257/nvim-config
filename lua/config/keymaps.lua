vim.keymap.set("n", "<leader>telk", ":Telescope keymaps<CR>", { desc = "keymaps list." })
vim.keymap.set("n", "<leader>upd", ":source %<CR>", { desc = "Update current file." })
vim.keymap.set('n', '<c-n>', ':NERDTree<CR>', { desc = 'Nerd tree.' })
vim.keymap.set('n', '<c-n>f', ':NERDTreeFind<CR>', { desc = 'Nerd tree find.' })
vim.keymap.set('n', '<c-n>t', ':NERDTreeToggle<CR>', { desc = 'Nerd tree toggle.' })

