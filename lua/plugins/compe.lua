local map = require'utils'.add_map

require'compe'.setup {
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = 'enable',
  throttle_time = 80,
  source_timeout = 200,
  resolve_timeout = 800,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  },

  source = {
    path = true,
    buffer = true,
    calc = true,
    nvim_lsp = true,
    nvim_lua = true,
    vsnip = false,
    ultisnips = false,
    luasnip = false,
    neorg = true
  }
}

map {'in', '<C-Space>', 'compe#complete()', opt = {silent = true, expr = true}}
map {'in', '<CR>', [[compe#confirm(luaeval("require 'nvim-autopairs'.autopairs_cr()"))]], opt = {silent = true, expr = true}}
map {'in', '<C-e>', 'compe#close("<C-e>")', opt = {silent = true, expr = true}}
map {'in', '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', opt = {silent = true, expr = true}}
map {'in', '<S-Tab>', 'pumvisible()  ? "<C-p>" : "<S-Tab>"', opt = {silent = true, expr = true}}
