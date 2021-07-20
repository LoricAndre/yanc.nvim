local user_variables = require'yanc'.variables
local default_variables = {
  g = {
    mapleader = ' '
  }
}

for scope, variables in pairs(default_variables) do
  for key, value in pairs(variables) do
    vim[scope][key] = value
  end
end
for scope, variables in pairs(user_variables) do
  for key, value in pairs(variables) do
    vim[scope][key] = value
  end
end
