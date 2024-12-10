return {
  -- {
  --   'wlangstroth/vim-racket',
  -- },
  {
    'Olical/conjure',
    ft = { 'clojure', 'fennel', 'racket' },
    init = function()
      vim.g['conjure#mapping#doc_word'] = { 'gk' }
    end,
    dependencies = { 'PaterJason/cmp-conjure' },
  },
  { 'PaterJason/cmp-conjure' },
}
