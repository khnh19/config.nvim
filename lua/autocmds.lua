vim.api.nvim_create_autocmd('InsertEnter', {
  callback = function()
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd('InsertLeave', {
  callback = function()
    vim.opt.relativenumber = true
  end,
})

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
})
