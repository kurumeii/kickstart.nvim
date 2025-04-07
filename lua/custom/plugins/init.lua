return {
  {
    'Shatur/neovim-ayu',
    priority = 1000,
    config = function()
      require('ayu').setup {
        mirage = true,
        terminal = false,
      }
      vim.cmd.colorscheme 'ayu'
    end,
  },
  {
    'romgrk/barbar.nvim',
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      animation = true,
      insert_at_start = true,
    },
    cmd = 'Barbar',
    keys = {
      {
        '<leader>B.',
        '<Cmd>BufferNext<CR>',
        desc = 'Move next tab',
        silent = true,
      },
      {
        '<leader>B,',
        '<Cmd>BufferPrevious<CR>',
        desc = 'Move previous tab',
        silent = true,
      },
      {
        '<leader>Bx',
        '<Cmd>BufferClose<CR>',
        desc = 'Close current tab',
        silent = true,
      },
    },
  },
}
