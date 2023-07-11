local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

null_ls.setup({
  debug = true,
  sources = {
    -- formatting
    formatting.stylua,
    -- formatting.prettier.with({
    --   local_only = true,
    -- }),
    formatting.mix,
    formatting.rustfmt,

    -- diagnostics
    diagnostics.eslint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            bufnr = bufnr,
            filter = function(cl)
              return cl.name == "null-ls"
            end
          })
        end,
      })
    end
  end,
})
