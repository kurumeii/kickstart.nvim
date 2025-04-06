return {
  {
    'Shatur/neovim-ayu',
    priority = 1000,
    config = function()
      require('ayu').setup {
        mirage = true,
        terminal = true,
      }
      vim.cmd.colorscheme 'ayu-mirage'
    end,
  },
  {
    'romgrk/barbar.nvim',
    init = function()
      vim.g.barbar_auto_setup = true
    end,
    config = function()
      local map = vim.api.nvim_set_keymap
      local opts = {
        noremap = true,
        silent = true,
      }
      -- move to prev/next tab
      map('n', '<leader>n-.>', '<Cmd>BufferNext<CR>', opts)
      map('n', '<leader>n-,>', '<Cmd>BufferPrevious<CR>', opts)
    end,
  },
}
