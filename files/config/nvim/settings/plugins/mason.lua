require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "elixirls",
    "eslint",
    "lua_ls",
    "pyright",
    "ruby_ls",
    "rust_analyzer",
    "terraformls",
    "tsserver",
  },
})
