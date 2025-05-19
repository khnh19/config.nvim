return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { { 'filename', path = 3 } },
        lualine_c = { 'diagnostics' },
        lualine_x = { 'encoding' },
        lualine_y = { 'branch', 'diff' },
        lualine_z = { 'filetype' },
      },
    }
  end,
}
