local add_map = require'utils'.add_map

require'bufferline'.setup {
  options = {
    numbers = "buffer_id",
    mappings = false,
    diagnostics = 'nvim_lsp',
    show_buffer_icons = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end
  }
}

add_map {'nn', '<Tab>', ':BufferLineCycleNext<CR>'}
add_map {'nn', '<S-Tab>', ':BufferLineCyclePrev<CR>'}
