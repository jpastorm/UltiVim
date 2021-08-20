vim.cmd([[
  command! -buffer -bar CRun :!gcc % && ./a.out && rm a.out
]])

vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>rp', ':CRun<CR>', { noremap = true, expr = false, silent = true })

vim.bo.shiftwidth = 2
vim.bo.tabstop = 2
vim.bo.softtabstop = 2


-- Indent with Spaces
vim.bo.expandtab = true
