return {
  {
    'wlangstroth/vim-racket',
  },
  {
    'Olical/conjure',
    ft = { 'clojure', 'fennel', 'racket' },
    init = function() end,
    dependencies = { 'PaterJason/cmp-conjure' },
  },
  { 'PaterJason/cmp-conjure' },
}
