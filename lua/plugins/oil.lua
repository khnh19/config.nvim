return {
  'stevearc/oil.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  keys = {
    {
      '<c-e>',
      function()
        require('oil').toggle_float()
      end,
    },
  },
  opts = {
    view_options = { show_hidden = true },
  },
}
