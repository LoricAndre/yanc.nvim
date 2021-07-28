local add_map = require'utils'.add_map

local user_mappings = require'yanc'.mappings

local default_mappings = {
  {'nn', '<M-l>', '<C-w><C-l>'},
  {'nn', '<M-k>', '<C-w><C-k>'},
  {'nn', '<M-j>', '<C-w><C-j>'},
  {'nn', '<M-h>', '<C-w><C-h>'},
  {'nn', '<Esc>', ':noh<CR>'},
  {'tn', '<C-d>', '<C-\\><C-n>'},
  {'vn', '<', '<gv'},
  {'vn', '>', '>gv'},
  {'nn', '<leader>Q', ':q<CR>', opt = {silent = true}},
  {'nn', '<leader>q', ':bw<CR>', opt = {silent = true}}
}

for _, mapping in ipairs(default_mappings) do
  add_map(mapping)
end
for _, mapping in ipairs(user_mappings) do
  add_map(mapping)
end
