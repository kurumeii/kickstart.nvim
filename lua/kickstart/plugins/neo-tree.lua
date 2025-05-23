return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    -- { '3rd/image.nvim', opts = {}, },
  },
  cmd = 'Neotree',
  keys = {
    { '<space>e', ':Neotree toggle<CR>', desc = 'Toggle Neotree', silent = true },
  },
  lazy = false,
  opts = {
    window = {
      position = 'right',
    },
    filesystem = {
      filtered_items = {
        visible = true,
      },
      hijack_netrw_behavior = 'open_current',
    },
  },
}
