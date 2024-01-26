require("lualine").setup({
  options = {
    theme = "nord",
  },
  sections = {
    lualine_b = {},
    lualine_c = { {
      "filename",
      path = 1,
    } },
  },
})
