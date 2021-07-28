vim.g.startify_lists = {
  {type = 'commands', header = {'Commands'}},
  {type = 'files', header = {'Recent Files'}},
  {type = 'dir', header = {'Recent Files in ' .. vim.fn.getcwd()}},
  {type = 'sessions', header = {'Saved sessions'}}
}

vim.g.startify_commands = {
  {s = {'Load Session', 'silent! lua require("auto-session").RestoreSession()'}}
}

vim.g.startify_session_dir = vim.fn.stdpath('data') .. '/sessions'
