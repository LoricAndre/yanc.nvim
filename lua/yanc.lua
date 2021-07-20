local yanc = {
  plugins = {
    -- Add new plugins here
    -- Using packer format
    {
      'lervag/vimtex',
      opt = true,
      ft = 'tex'
    }
  },
  mappings = {
    -- Add custom mappings here
    -- Format : {'nn', 'lhs', 'rhs', opt = 'opt'}
    -- nn is for nnoremap, n will be for nmap
    -- see :h nvim_set_keymap and :h map-arguments
    {'nn', '<M-m>', '<C-w><C-l>'},
    {'nn', '<M-l>', '<C-w><C-k>'},
    {'nn', '<M-k>', '<C-w><C-j>'},
    {'nn', '<M-j>', '<C-w><C-h>'},
    {'nn', 'j', 'h'},
    {'nn', 'k', 'j'},
    {'nn', 'l', 'k'},
    {'nn', 'm', 'l'},
    {'vn', 'j', 'h'},
    {'vn', 'k', 'j'},
    {'vn', 'l', 'k'},
    {'vn', 'm', 'l'},
    {'nn', '<leader><Space>', ':b#<CR>'},
  },
  options = {
    -- Add custom options here
    -- Format : textwidth = 80
    shiftwidth = 2,
    softtabstop = 2,
    expandtab = true
  },
  variables = {
    -- Add custom variables here
    g = {
      mapleader = ' '
    }
  },
  custom = function()
    -- Add all custom lua code you want to be run at startup here.
    require'trouble'.setup {
      action_keys = { -- key mappings for actions in the trouble list
        -- map to {} to remove a mapping, for example:
        -- close = {},
        close = "q", -- close the list
        cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
        refresh = "r", -- manually refresh
        jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
        open_split = { "<c-x>" }, -- open buffer in new split
        open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
        open_tab = { "<c-t>" }, -- open buffer in new tab
        jump_close = {"o"}, -- jump to the diagnostic and close the list
        toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
        toggle_preview = "P", -- toggle auto_preview
        hover = "K", -- opens a small popup with the full multiline message
        preview = "p", -- preview the diagnostic location
        close_folds = {"zM", "zm"}, -- close all folds
        open_folds = {"zR", "zr"}, -- open all folds
        toggle_fold = {"zA", "za"}, -- toggle fold of current file
        previous = "l", -- preview item
        next = "k" -- next item
        }
      }
  end,
  config = {
    -- Configuration for yanc custom options
    colorscheme = 'tokyonight'
  }
}

return yanc
