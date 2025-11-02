return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "prettier" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        typescript = { "prettier" },
        javascript = { "prettier" },
        typescriptreact = { "prettier" },
        javascriptreact = { "prettier" },
      },
      formatters = {
        prettier = {
          prepend_args = {
            "--tab-width",
            "4",
          },
        },
      },
    },
  },
}
