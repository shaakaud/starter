return {
  {
    'tpope/vim-fugitive',
    lazy = false,
    config = function()
      require('cscope_maps').setup({
      })
    end,
  },
}
