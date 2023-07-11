require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "rust_analyzer", "elixirls", "tsserver", "pyright", "ruby_ls" }
}
