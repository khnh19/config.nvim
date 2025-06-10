return {
  'akinsho/bufferline.nvim',
  lazy = false,
  opts = {},
  keys = {
    { '<leader>l', vim.cmd.BufferLineCycleNext },
    { '<leader>h', vim.cmd.BufferLineCyclePrev },
  },
}
