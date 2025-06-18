return {
  'folke/todo-comments.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()
    local map = vim.keymap.set

    map('n', ']t', function()
      require('todo-comments').jump_next()
    end)

    map('n', '[t', function()
      require('todo-comments').jump_prev()
    end)

    map('n', '<leader>t', '<cmd>TodoTelescope<cr>')

    require('todo-comments').setup()
  end,
}
