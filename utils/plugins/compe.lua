-- Compe setup
require('compe').setup({
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = 'enable',
  throttle_time = 80,
  source_timeout = 200,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = true,
  source = {
    path = { kind = '   (Path)' },
    buffer = { kind = '   (Buffer)' },
    calc = { kind = '   (Calc)' },
    vsnip = false,
    nvim_lsp = { kind = '   (LSP)' },
    nvim_lua = { kind = '  ' },
    spell = { kind = '   (Spell)' },
    tags = false,
    snippets_nvim = { kind = '  ' },
    ultisnips = true,
    treesitter = false,
    emoji = { kind = ' ﲃ  (Emoji)', filetypes = { 'markdown', 'text' } },
  },
})

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t('<C-n>')
  elseif check_back_space() then
    return t('<Tab>')
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t('<C-p>')
  else
    return t('<S-Tab>')
  end
end
