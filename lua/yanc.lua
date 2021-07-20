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
  },
  options = {
    -- Add custom options here
    -- Format : textwidth = 80
  },
  variables = {
    -- Add custom variables here
    g = {
      mapleader = ' '
    }
  },
  custom = function()
    -- Add all custom lua code you want to be run at startup here.
  end,
  config = {
    -- Configuration for yanc custom options
  }
}

return yanc
