-- This will setup all plugins
-- THeir configurations are in their own directories


-- Install packer.nvim if not already done
-- Snippet is from official repo README
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

require'packer'.init {
  display = {
      open_fn = require('packer.util').float,
  }
}
local use = require'packer'.use

use {
  'wbthomason/packer.nvim',
  opt = true
}
use {
  'kyazdani42/nvim-tree.lua',
  requires = 'kyazdani42/nvim-web-devicons',
  as = 'tree',
  config = function() require'plugins.tree' end
}
use {
  'neovim/nvim-lspconfig'
}
use {
  'nvim-treesitter/nvim-treesitter',
  as = 'treesitter',
  run = ':TSUpdate'
}
use {
  'liuchengxu/vista.vim',
  as = 'vista',
  require = 'nvim/nvim-lspconfig',
  config = function() require'plugins.vista' end,
}
use {
  'hrsh7th/nvim-compe',
  as = 'compe',
  config = function() require'plugins.compe' end
}
use {
  'vhyrro/neorg',
  as = 'neorg',
  requires = 'nvim-lua/plenary.nvim'
}
use {
  'glepnir/lspsaga.nvim',
  as = 'lspsaga',
  require = 'nvim/nvim-lspconfig',
  config = function() require'plugins.saga' end
}
use {
  'folke/trouble.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  as = 'trouble',
  config = function() require'plugins.trouble' end
}
use {
  'glepnir/galaxyline.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  as = 'statusline',
  config = function() require'plugins.statusline' end,
}
use {
  'ggandor/lightspeed.nvim',
  as = 'lightspeed'
}
use {
  'simrat39/symbols-outline.nvim',
  as = 'symbols-outline',
  opt = true,
  cmd = {
    'SymbolsOutline',
    'SymbolsOutlineOpen',
    'SymbolsOutlineClose'
  }
}
use {
  'michaelb/sniprun',
  run = 'bash ./install.sh',
  opt = true,
  cmd = 'SnipRun'
}
use {
  'windwp/nvim-autopairs',
  as = 'autopairs',
  config = function() require'plugins.autopairs' end,
}
use {
  'b3nj5m1n/kommentary'
}
use {
  'kabouzeid/nvim-lspinstall',
  requires = 'neovim/nvim-lspconfig',
  config = function() require'plugins.lspinstall' end,
}
use {
  'folke/tokyonight.nvim'
}
use {
  'LoricAndre/OneTerm.nvim',
  as = 'oneterm',
  config = function() require'plugins.oneterm' end,
}
use {
  'rmagatti/auto-session'
}
use {
  'akinsho/nvim-bufferline.lua',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function() require'plugins.bufferline'end,
}
use {
  'kyazdani42/nvim-web-devicons'
}
use {
  'ray-x/lsp_signature.nvim',
  config = function() require'plugins.lsp_signature' end
}
use {
  'lukas-reineke/format.nvim'
}

use {
  'yamatsum/nvim-cursorline'
}

use {
  'folke/which-key.nvim',
  config = function() require'plugins.which-key' end
}

local user_plugins = require'yanc'.plugins
for _, plugin in pairs(user_plugins) do
  use(plugin)
end
