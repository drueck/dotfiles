require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "bash",
    "css",
    "elixir",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "python",
    "ruby",
    "rust",
    "terraform",
    "vim",
  },

  highlight = {
    enable = true,
  },
})
