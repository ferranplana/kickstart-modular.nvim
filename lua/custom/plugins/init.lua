-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
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
}
