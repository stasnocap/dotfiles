return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter",
        ["<Tab>"] = { "select_and_accept" },
        ["<CR>"] = false,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            {
              "<C-K>",
              function()
                return vim.lsp.buf.hover()
              end,
              desc = "Hover",
            },
            { "K", false },
          },
        },
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc, silent = true })
        end

      -- stylua: ignore start
      map("n", "]h", function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gs.nav_hunk("next")
        end
      end, "Next Hunk")
      map("n", "[h", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gs.nav_hunk("prev")
        end
      end, "Prev Hunk")
      map("n", "]H", function() gs.nav_hunk("last") end, "Last Hunk")
      map("n", "[H", function() gs.nav_hunk("first") end, "First Hunk")
      map({ "n", "x" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", "Stage Hunk")
      map({ "n", "x" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", "Reset Hunk")
      map("n", "<leader>ghS", gs.stage_buffer, "Stage Buffer")
      map("n", "<leader>ghu", gs.undo_stage_hunk, "Undo Stage Hunk")
      map("n", "<leader>ghR", gs.reset_buffer, "Reset Buffer")
      map("n", "<leader>ghp", gs.preview_hunk_inline, "Preview Hunk Inline")
      map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "Blame Line")
      map("n", "<leader>ghB", function() gs.blame() end, "Blame Buffer")
      map("n", "<leader>ghd", gs.diffthis, "Diff This")
      map("n", "<leader>ghD", function() gs.diffthis("~") end, "Diff This ~")
      map({ "o", "x" }, "rh", ":<C-U>Gitsigns select_hunk<CR>", "GitSigns Select Hunk")
      end,
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        keymaps = {
          install_package = "I",
          update_package = "U",
        },
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            win = {
              list = {
                keys = {
                  ["n"] = "explorer_close",
                  ["e"] = "list_down",
                  ["u"] = "list_up",
                  ["i"] = "confirm",

                  ["U"] = "explorer_update",
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "folke/flash.nvim",
    opts = {
      labels = "arstgmneioqwfpbjluyzxcdvkh",
      modes = {
        char = {
          label = { exclude = "neiostrdw" },
          keys = { "f", "F", ["t"] = "p", ["T"] = "P", ";", "," },
        },
        treesitter = {
          labels = "arstgmneioqwfpbjluyzxcdvkh",
        },
        search = {
          enabled = true
        }
      },
    },
    keys = {
      { "s", false },
      {
        "h",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      { "S", false },
      {
        "H",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      { "r", false },
      { "R", false },
      { "<c-s>", false },
    },
  },
}
