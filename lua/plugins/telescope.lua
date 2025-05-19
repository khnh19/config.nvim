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
    local keymap = vim.keymap
    local builtin = require 'telescope.builtin'
    local actions = require 'telescope.actions'

    keymap.set('n', '<leader>f', builtin.find_files, {})
    keymap.set('n', '<leader>g', builtin.live_grep, {})

    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['esc'] = actions.close,
          },
        },
        file_ignore_patterns = {
          '^%.git/',
          'lazy%-lock%.json',
        },
        prompt_prefix = '   ',
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
          preview_cutoff = 60,
          preview_width = 0.5,
        },
      },
    }
  end,
}
