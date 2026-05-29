require("claudecode").setup({
  terminal = {
    provider = "none",
  },
})

vim.keymap.set({ "n", "v" }, "<leader>cs", "<cmd>ClaudeCodeSend<cr>")
vim.keymap.set("n", "<leader>cA", "<cmd>ClaudeCodeDiffAccept<cr>")
vim.keymap.set("n", "<leader>cD", "<cmd>ClaudeCodeDiffDeny<cr>")

vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "TermLeave" }, {
  pattern = "*",
  callback = function()
    if vim.fn.mode() ~= "c" then
      vim.cmd("silent! checktime")
    end
  end,
})
