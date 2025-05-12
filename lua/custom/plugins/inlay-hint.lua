return {
  'felpafel/inlay-hint.nvim',
  event = 'LspAttach',
  config = function()
    require('inlay-hint').setup {
      virt_text_pos = 'inline',
      highlight_group = 'LspInlayHint',
      hl_mode = 'replace',
    }
  end,
}
