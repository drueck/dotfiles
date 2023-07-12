require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "rust_analyzer", "elixirls", "tsserver", "eslint", "pyright", "ruby_ls" },
})
