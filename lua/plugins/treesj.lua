return {
  'Wansmer/treesj',
  dependencies = 'nvim-treesitter/nvim-treesitter',
  config = function()
    local map = vim.keymap.set
    local tsj = require 'treesj'

    tsj.setup {
      use_default_keymaps = false,
    }

    map('n', '<leader>j', require('treesj').toggle)

    map('n', '<leader>J', function()
      require('treesj').toggle { split = { recursive = true } }
    end)
  end,
}
