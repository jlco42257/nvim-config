return {
  "tpope/vim-fugitive",
  event = "VeryLazy",
  keys = {
    { "<leader>gi", ":Git init<cr>", desc = "Git init" },
    { "<leader>gp", ":Git pull<cr>", desc = "Git pull" },
    { "<leader>ga", ":Git add .<cr>", desc = "Git add all" },
    { "<leader>gc", ":Git commit<cr>", desc = "Git commit" },
  },
  cmd = { "G", "Git" },
}
