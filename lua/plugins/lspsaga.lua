return {
  'nvimdev/lspsaga.nvim',
  config = function()
    local map = vim.keymap.set

    require('lspsaga').setup {
      ui = {
        border = 'rounded',
      },
      lightbulb = {
        enable = false,
      },
    }

    map('n', '[d', '<cmd>Lspsaga diagnostic_jump_prev<cr>')
    map('n', ']d', '<cmd>Lspsaga diagnostic_jump_next<cr>')

    map('n', '<leader>o', '<cmd>Lspsaga outline<cr>')

    local builtin = require 'telescope.builtin'

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local opts = { buffer = ev.buf }
        map('n', 'gd', '<cmd>Lspsaga goto_definition<cr>', opts)
        map('n', '<space>r', vim.lsp.buf.rename, opts)
        map({ 'n', 'v' }, '<space>ca', '<cmd>Lspsaga code_action<cr>', opts)
        map('n', 'gr', builtin.lsp_references, opts)
      end,
    })

    map('n', '<space>k', '<cmd>Lspsaga hover_doc<cr>', { silent = true })

    -- error lens
    vim.fn.sign_define {
      {
        name = 'DiagnosticSignError',
        text = '',
        texthl = 'DiagnosticSignError',
        linehl = 'ErrorLine',
      },
      {
        name = 'DiagnosticSignWarn',
        text = '',
        texthl = 'DiagnosticSignWarn',
        linehl = 'WarningLine',
      },
      {
        name = 'DiagnosticSignInfo',
        text = '',
        texthl = 'DiagnosticSignInfo',
        linehl = 'InfoLine',
      },
      {
        name = 'DiagnosticSignHint',
        text = '',
        texthl = 'DiagnosticSignHint',
        linehl = 'HintLine',
      },
    }
  end,
}
