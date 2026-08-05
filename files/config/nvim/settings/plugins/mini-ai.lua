require("mini.ai").setup({
  custom_textobjects = {
    m = require("mini.ai").gen_spec.treesitter({
      a = "@function.outer",
      i = "@function.inner",
    }),
  },
})
