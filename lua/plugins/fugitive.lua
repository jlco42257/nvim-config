return {
  "tpope/vim-fugitive",
  event = "VeryLazy",
  keys = {
    { "<leader>gi", ":Git init<cr>", desc = "Git init" },
    { "<leader>gpl", ":Git pull<cr>", desc = "Git pull" },
    { "<leader>ga", ":Git add .<cr>", desc = "Git add all" },
    { "<leader>gs", ":Git status<cr>", desc = "Git status" },
    { "<leader>gps", ":Git push<cr>", desc = "Git push" },
  },
  cmd = { "G", "Git" },
}
