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
    "terraformls",
    "ts_ls",
  },
  automatic_enable = false,
})
