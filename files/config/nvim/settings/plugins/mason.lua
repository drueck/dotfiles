require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "elixirls",
    "eslint",
    "lua_ls",
    "pyright",
    "ruff",
    "ruby_lsp",
    "rust_analyzer",
    "tofu_ls",
    "ts_ls",
  },
  automatic_enable = false,
})
