-- Useful plugin to show you pending keybinds.
return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function()
    -- document existing key chains
    require('which-key').setup {
      preset = 'modern',
    }
    require('which-key').add {
      { '<leader>c',  group = '[C]ode' },
      { '<leader>c_', hidden = true },
      { '<leader>d',  group = '[D]ocument' },
      { '<leader>d_', hidden = true },
      { '<leader>g',  group = '[G]it' },
      { '<leader>g_', hidden = true },
      { '<leader>h',  group = 'Git [H]unk' },
      { '<leader>h_', hidden = false },
      { '<leader>r',  group = '[R]ename' },
      { '<leader>r_', hidden = true },
      { '<leader>s',  group = '[S]earch' },
      { '<leader>s_', hidden = true },
      { '<leader>t',  group = '[T]oggle' },
      { '<leader>t_', hidden = true },
      { '<leader>w',  group = '[W]orkspace' },
      { '<leader>w_', hidden = true },
      { 'gr',         group = 'Lsp Actions' },
      { 'gr_',        hidden = true },
    }
    -- register which-key VISUAL mode
    -- required for visual <leader>hs (hunk stage) to work
    require('which-key').add {
      { '<leader>',  group = 'VISUAL <leader>', mode = 'v' },
      { '<leader>h', desc = 'Git [H]unk',       mode = 'v' },
    }
  end,
}
