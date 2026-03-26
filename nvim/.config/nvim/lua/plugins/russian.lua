return {
  "Wansmer/langmapper.nvim",
  lazy = false,
  priority = 1,
  config = function()
    local function escape(str)
      -- You need to escape these characters to work correctly
      local escape_chars = [[;,."|\]]
      return vim.fn.escape(str, escape_chars)
    end

    local en = [[`qwfpb[jluy'arstg]mneio;zxcdvvkh]]
    local ru = [[ёяжфпбшйлуыьарстгщмнеиоюзхцдввкч]]
    local en_shift = [[~QWFPB{JLUY"ARSTG}MNEIO:ZXCDVVKH]]
    local ru_shift = [[ЁЯЖФПБШЙЛУЫЬАРСТГЩМНЕИОЮЗХЦДВВКЧ]]

    vim.opt.langmap = vim.fn.join({
      -- | `to` should be first     | `from` should be second
      escape(ru_shift) .. ";" .. escape(en_shift),
      escape(ru) .. ";" .. escape(en),
    }, ",")

    require("langmapper").setup({
      default_layout = [[~QWFPB{JLUY"_ARSTG}MNEIO:ZXCDV?KH<>`qwfpb[jluy'-arstg]mneio;zxcdv/kh,.]],
      layouts = {
        ru = {
          layout = "ЁЯЖФПБШЙЛУЫЬ_АРСТГЩМНЕИОЮЗХЦДВ?КЧ;:ёяжфпбшйлуыь-арстгщмнеиоюзхцдв/кч,.",
        },
      },
    })
  end,
}
