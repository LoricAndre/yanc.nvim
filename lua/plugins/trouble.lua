local map = require'utils'.add_map

require'trouble'.setup {
  signs = {
     -- icons / text used for a diagnostic
     error = "",
     warning = "",
     hint = "",
     information = "",
     other = "﫠"
   },
}

map {'nn', '<leader>oq', ':TroubleToggle<CR>', opt = {silent = true}}
