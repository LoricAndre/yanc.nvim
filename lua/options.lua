local opt = vim.opt
local user_options = require'yanc'.options
local default_options = {
  hidden = true,
  autoindent = true,
  backspace = 'indent,eol,start',
  smarttab = true,
  incsearch = true,
  wildmenu = true,
  ruler = true,
  scrolloff = 4,
  shiftwidth = 2,
  expandtab = true,
  softtabstop = 2,
  termguicolors = true,
  number = true,
  relativenumber = true,
  splitbelow = true,
  splitright = true,
  showmode = true,
  mouse = 'a',
  completeopt = 'menuone,noselect',
  undodir = vim.fn.stdpath('data') .. '/undodir',
  undofile = true,
  timeoutlen = 300,
  clipboard = 'unnamedplus'
}


for key, val in pairs(user_options) do
  opt[key] = val
end
for key, val in pairs(default_options) do
  opt[key] = val
end
