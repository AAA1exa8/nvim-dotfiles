return {
  {
    'poljar/typos.nvim',
  },
  {
    'nvimtools/none-ls.nvim',
    config = function()
      local null_ls = require 'null-ls'
      null_ls.setup {
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettierd,
          -- null_ls.builtins.formatting.rustfmt,
          -- null_ls.builtins.formatting.zigfmt,
          -- null_ls.builtins.diagnostics.eslint_d,
          require('typos').actions,
          require('typos').diagnostics,
        },
      }
    end,
  },
}
