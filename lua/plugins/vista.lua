local vim = vim
local add_map = require'utils'.add_map

vim.g.vista_default_executive = 'nvim_lsp'
add_map {'nn', '<leader>ov', ':Vista!!<CR>', opt = {silent = true}}
