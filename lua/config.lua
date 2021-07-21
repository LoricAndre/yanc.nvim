local user_config = require'yanc'.config
local cmd = vim.cmd

local colorscheme_cmd = 'colorscheme ' .. (user_config.colorscheme or 'tokyonight')
cmd(colorscheme_cmd)
