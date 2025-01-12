vim.cmd([[
  command! -buffer -bar Run :!lua %
]])

vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>rp', ':Run<CR>', { noremap = true, expr = false, silent = true })

vim.bo.shiftwidth = 2
vim.bo.tabstop = 2
vim.bo.softtabstop = 2

-- Indent with Spaces
vim.bo.expandtab = true
