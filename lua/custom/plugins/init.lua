-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'mtdl9/vim-log-highlighting' },
  { 'nvim-tree/nvim-web-devicons', opts = {} },
  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    -- table: default groups
    groups = {
      'Normal',
      'NormalNC',
      'Comment',
      'Constant',
      'Special',
      'Identifier',
      'Statement',
      'PreProc',
      'Type',
      'Underlined',
      'Todo',
      'String',
      'Function',
      'Conditional',
      'Repeat',
      'Operator',
      'Structure',
      'LineNr',
      'NonText',
      'SignColumn',
      'CursorLine',
      'CursorLineNr',
      'StatusLine',
      'StatusLineNC',
      'EndOfBuffer',
    },
    -- table: additional groups that should be cleared
    extra_groups = {},
    -- table: groups you don't want to clear
    exclude_groups = {},
    -- function: code to be executed after highlight groups are cleared
    -- Also the user event "TransparentClear" will be triggered
    on_clear = function() end,
  },
  {
    'folke/snacks.nvim',
    ---@type snacks.Config
    opts = {
      notifier = {
        -- your notifier configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        enabled = true,
        timeout = 3000,
      },
      dashboard = {},
    },
    init = function()
      vim.keymap.set('n', '<leader>n', function()
        Snacks.notifier.show_history()
      end, { desc = 'Notification History' })
    end,
  },
  {
    'ggml-org/llama.vim',
    init = function()
      vim.g.llama_config = {
        endpoint = 'http://127.0.0.1:8080/infill',
        enable_at_startup = false,
      }
      vim.keymap.set('n', '<leader>tl', '<cmd>LlamaToggle<CR>', { desc = '[T]oggle [L]lama.cpp' })
    end,
  },
  { 'dstein64/nvim-scrollview' },
  {
    'amitds1997/remote-nvim.nvim',
    version = '*', -- Pin to GitHub releases
    dependencies = {
      'nvim-lua/plenary.nvim', -- For standard functions
      'MunifTanjim/nui.nvim', -- To build the plugin UI
      'nvim-telescope/telescope.nvim', -- For picking b/w different remote methods
    },
    config = true,
  },
}
