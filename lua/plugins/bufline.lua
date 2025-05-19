return {
  'akinsho/bufferline.nvim',
  lazy = false,
  keys = {
    { '<leader>j', vim.cmd.BufferLineCycleNext },
    { '<leader>k', vim.cmd.BufferLineCyclePrev },
  },
  opts = {
    options = {
      separator_style = 'slope',
      buffer_close_icon = '󰅖',
    },
  },
}
