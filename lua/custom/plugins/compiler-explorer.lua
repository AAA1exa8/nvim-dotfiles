local on_attach = function(bufnr)
  vim.keymap.set('n', 'K', ':CEShowTooltip<CR>', { buffer = bufnr, desc = 'LSP: Hover Documentation' })
end

return {
  'krady21/compiler-explorer.nvim',
  config = function()
    require('compiler-explorer').setup {
      line_match = {
        highlight = true,
        jump = true,
      },
      on_attach = on_attach,
      languages = { -- Language specific default compiler/flags
        c = {
          compiler = 'rv64-cclang',
          compiler_flags = '-Oz',
        },
      },
    }
  end,
}
