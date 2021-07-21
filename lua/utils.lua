local map = vim.api.nvim_set_keymap

local add_map = function(mapping)
  local opt = mapping.opt or {}
  if mapping[1]:len() > 1 then
    opt.noremap = true
  end
  map(mapping[1]:sub(1, 1), mapping[2], mapping[3], opt)
end

local install_lsp = function()
  local servers = require'plugins.config'.languages
  for _, server in pairs(servers) do
    require'lspinstall'.install_server(server)
  end
end

return {
  add_map = add_map,
  install_lsp = install_lsp
}
