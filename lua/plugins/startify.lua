vim.g.startify_lists = {
  {type = 'files', header = 'Recent Files'},
  {type = 'dir', header = 'Recent Files in ' .. vim.fn.getcwd()},
  {type = 'sessions', header = 'Saved sessions'}
}

vim.g.startify_session_dir = vim.fn.stdpath('data') .. '/sessions'
