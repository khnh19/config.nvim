return {
  'nvim-telescope/telescope.nvim',
  version = '0.1.4',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
  },
  config = function()
    local map = vim.keymap.set
    local builtin = require 'telescope.builtin'
    local actions = require 'telescope.actions'

    map('n', '<leader>f', builtin.find_files, {})
    map('n', '<leader>g', builtin.live_grep, {})

    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['esc'] = actions.close,
          },
        },
        file_ignore_patterns = {
          '%.git/',
          'node_modules/',
          '%.lock',
        },
        dynamic_preview_title = true,
        path_display = { 'smart' },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
      layout_config = {
        horizontal = {
          preview_cutoff = 100,
          preview_width = 0.5,
        },
      },
    }
    require('telescope').load_extension 'fzf'
  end,
}
