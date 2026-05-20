return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          -- Build full capabilities, then remove semanticTokens to avoid the crash
          capabilities = vim.tbl_deep_extend(
            "force",
            vim.lsp.protocol.make_client_capabilities(),
            require("blink.cmp").get_lsp_capabilities(),
            { textDocument = { semanticTokens = nil } } -- disables client-side semantic tokens
          ),
          settings = {
            gopls = {
              semanticTokens = false, -- also tells the server not to compute them
            },
          },
        },
      },
    },
  },
}
