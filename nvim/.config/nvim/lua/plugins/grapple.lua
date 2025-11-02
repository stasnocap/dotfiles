return {
  "cbochs/grapple.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    scope = "git_branch",
    icons = true,
    status = false,
    win_opts = {
      border = "rounded",
    },
  },
  keys = {
    { "<leader>a", "<cmd>Grapple toggle<cr>", desc = "Tag a file" },
    { "<M-Up>", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },

    { "<c-n>", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
    { "<c-e>", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
    { "<c-i>", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
    { "<c-l>", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
    { "<c-u>", "<cmd>Grapple select index=5<cr>", desc = "Select fifth tag" },
    { "<c-y>", "<cmd>Grapple select index=6<cr>", desc = "Select sixth tag" },
  },
}
