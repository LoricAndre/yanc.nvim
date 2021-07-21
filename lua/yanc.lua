local yanc = {
  plugins = {
    -- Add new plugins here
    -- Using packer format
  },
  mappings = {
    -- Add custom mappings here
    -- Format : {'nn', 'lhs', 'rhs', opt = 'opt'}
    -- nn is for nnoremap, n will be for nmap
    -- see :h nvim_set_keymap and :h map-arguments
    -- Example :
    -- {'nn', '<leader><Space>', ':b#<CR>'},
  },
  options = {
    -- Add custom options here
    -- Example : textwidth = 80
  },
  variables = {
    -- Add custom variables here
    -- First level key is scope, then key and value
    -- Example :
    --[[ g = {
      mapleader = ' '
    } ]]
  },
  custom = function()
    -- Add all custom lua code you want to be run at startup here.
  end,
  config = {
    -- Configuration for yanc custom options
  }
}

return yanc
