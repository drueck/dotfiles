require("formatter").setup({
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier,
    },
    json = {
      require("formatter.filetypes.json").prettier,
    },
    python = {
      require("formatter.filetypes.python").black,
    },
    rust = {
      require("formatter.filetypes.rust").rustfmt,
    },
    elixir = {
      require("formatter.filetypes.elixir").mixformat,
    },
    terraform = {
      require("formatter.filetypes.terraform").terraformfmt,
    },
  },
})

local autoformat_types = {
  elixir = true,
  javascript = true,
  javascriptreact = true,
  json = true,
  lua = true,
  python = true,
  rust = true,
  terraform = true,
  typescript = true,
  typescriptreact = true,
}

vim.api.nvim_create_autocmd("BufWritePost", {
  desc = "Autoformat certain types of files on save",
  group = vim.api.nvim_create_augroup("autosave", { clear = true }),
  callback = function(opts)
    local effective_autoformat_types = {}

    -- start with the global settings from above
    for type, enabled in pairs(autoformat_types) do
      effective_autoformat_types[type] = enabled
    end

    -- merge in overrides from local config files at runtime
    -- e.g. to disable python and javascript for a given repo
    -- add an .nvim.lua file in the root of the repo with this content
    --
    -- vim.g.autoformat_types = {
    --   python = false,
    --   javascript = false,
    -- }
    if vim.g.autoformat_types then
      for type, enabled in pairs(vim.g.autoformat_types) do
        effective_autoformat_types[type] = enabled
      end
    end

    if effective_autoformat_types[vim.bo[opts.buf].filetype] then
      vim.cmd("FormatWrite")
    end
  end,
})
