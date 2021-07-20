local add_map = require'utils'.add_map

local mappings = {
  {'nn', '<leader>sf', ':OneTerm files_or_git_files<CR>', opt = {silent = true}},
  {'nn', '<leader>sF', ':OneTerm files<CR>', opt = {silent = true}},
  {'nn', '<leader>b', ':OneTerm buffers<CR>', opt = {silent = true}},
  {'nn', '<leader>sL', ':OneTerm lines<CR>', opt = {silent = true}},
  {'nn', '<leader>sl', ':OneTerm blines<CR>', opt = {silent = true}},
  {'nn', '<leader>sa', ':OneTerm ag<CR>', opt = {silent = true}},
  {'nn', '<leader>sr', ':OneTerm rg<CR>', opt = {silent = true}},
  {'nn', '<leader>gC', ':OneTerm commits<CR>', opt = {silent = true}},
  {'nn', '<leader>gc', ':OneTerm bcommits<CR>', opt = {silent = true}},
  {'nn', '<leader>lr', ':OneTerm references<CR>', opt = {silent = true}},
  {'nn', '<leader>ls', ':OneTerm symbols<CR>', opt = {silent = true}},
  {'nn', '<leader>lS', ':OneTerm ws_symbols<CR>', opt = {silent = true}},
  {'nn', '<leader>go', ':OneTerm git<CR>', opt = {silent = true}},
  {'nn', '<leader>R', ':OneTerm ranger<CR>', opt = {silent = true}},
  {'nn', '<leader>mk', ':OneTerm make<CR>', opt = {silent = true}},
  {'nn', '<leader>y', ':OneTerm yanks<CR>', opt = {silent = true}},
  {'nn', '<leader>gb', ':OneTerm branches<CR>', opt = {silent = true}},
  {'nn', '<leader>t', ':OneTerm term<CR>', opt = {silent = true}},
  {'nn', '<leader>so', ':OneTerm oldfiles<CR>', opt = {silent = true}},
  {'nn', '<leader>h', ':OneTerm history<CR>', opt = {silent = true}},
  {'nn', '<leader>ss', ':OneTerm snippets<CR>', opt = {silent = true}},
  {'nn', '<leader>Sl', ':OneTerm sessions<CR>', opt = {silent = true}},
}
local g_variables = {
  oneterm_yank = true,
  oneterm_sessions_path = vim.fn.stdpath('data') .. '/sessions'
}

for _, mapping in ipairs(mappings) do
  add_map(mapping)
end

for key, val in pairs(g_variables) do
  vim.g[key] = val
end
