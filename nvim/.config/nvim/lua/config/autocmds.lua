-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lazy",
  callback = function()
    -- Remove the conflicting keymaps in Lazy UI
    vim.keymap.set("n", "u", "<Nop>", { buffer = true, desc = "Disabled" })
    vim.keymap.set("n", "U", "<Nop>", { buffer = true, desc = "Disabled" })
    vim.keymap.set("n", "i", "<Nop>", { buffer = true, desc = "Disabled" })
  end,
})
