local saga = require 'lspsaga'
local map = require'utils'.add_map

saga.init_lsp_saga {
}

map {'nn', '<leader>ca', ':Lspsaga code_action<CR>', opt = {silent = true}}
map {'nn', '<leader>cf', ':Lspsaga lsp_finder<CR>', opt = {silent = true}}
map {'nn', 'K', ':Lspsaga hover_doc<CR>', opt = {silent = true}}
map {'nn', '<leader>cs', ':Lspsaga signature_help<CR>', opt = {silent = true}}
map {'nn', '<leader>cr', ':Lspsaga rename<CR>', opt = {silent = true}}
map {'nn', '<leader>cd', ':Lspsaga preview_definition<CR>', opt = {silent = true}}
vim.cmd [[autocmd CursorHold * Lspsaga hover_doc]]
