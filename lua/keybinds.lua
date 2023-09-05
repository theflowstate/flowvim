-- set leader
vim.g.mapleader = ' '

saved_dir = vim.fn.expand('%:p')
vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle <CR>')
vim.keymap.set('n', '<leader>eo', ':function Test() <CR>')
-- vim.keymap.set('n', '<leader>eo', 'api.tree.open({ path =' .. saved_dir .. '}) <CR>')

function Test()
  api.tree.change_root("~/Documents/")
end

