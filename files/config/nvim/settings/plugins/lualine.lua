require("lualine").setup({
  options = {
    theme = "rose-pine",
  },
  sections = {
    lualine_b = {},
    lualine_c = { {
      "filename",
      path = 1,
    } },
  },
})
