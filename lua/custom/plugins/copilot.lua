return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_enabled = false
    vim.keymap.set('i', '<C-a>', 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = true,
    })
    vim.g.copilot_not_tab_map = true
  end,
}
