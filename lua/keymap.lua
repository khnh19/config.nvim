local map = vim.keymap.set

map('n', '<c-a>', 'ggVG')

map({ 'n', 'x' }, '<leader>p', '"0p')

map('n', '<leader>q', '<cmd>q<cr>')
map('n', '<leader>w', '<cmd>w<cr>')
map('n', '<leader>x', '<cmd>x<cr>')

map('n', '<leader>nh', ':nohl<cr>')

map('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
map('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })
