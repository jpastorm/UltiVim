vim.cmd([[
  command! -buffer -bar Run :!ocaml %
]])

vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>rp', ':Run<CR>', { noremap = true, expr = false, silent = true })
