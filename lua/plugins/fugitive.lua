return {
  "tpope/vim-fugitive",
  event = "VeryLazy",
  keys = {
    { "<leader>gf", ":Git fetch --all -p<cr>", desc = "Git fetch" },
    { "<leader>gp", ":Git pull<cr>", desc = "Git pull" },
    { "<leader>gdl", ":diffget //2<cr>", desc = "Git diff grab from left" },
    { "<leader>gdr", ":diffget //3<cr>", desc = "Git diff grab from right" },
  },
  cmd = { "G", "Git" },
}
