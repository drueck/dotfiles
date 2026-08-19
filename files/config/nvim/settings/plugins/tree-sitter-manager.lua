require("tree-sitter-manager").setup({
  ensure_installed = {
    "bash",
    "css",
    "elixir",
    "hcl",
    "html",
    "javascript",
    "json",
    "python",
    "ruby",
    "rust",
    "terraform",
  },
  highlight = true,
})
