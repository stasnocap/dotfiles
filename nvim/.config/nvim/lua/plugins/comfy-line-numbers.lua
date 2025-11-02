return {
  "mluders/comfy-line-numbers.nvim",
  config = function()
    require("comfy-line-numbers").setup({
      up_key = "u",
      down_key = "e",
    })
  end,
}
