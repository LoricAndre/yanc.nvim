local lspinstall = require'lspinstall'

lspinstall.setup()

local function load_servers()
  local servers = lspinstall.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

lspinstall.post_install_hook = function()
  load_servers()
  vim.cmd [[bufdo e]]
end

load_servers()
