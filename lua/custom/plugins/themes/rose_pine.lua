return {
  'rose-pine/neovim',
  name = 'reose-pine',
  priority = 1000,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    -- require('catppuccin').setup {
    --   styles = {
    --     comments = { italic = false }, -- Disable italics in comments
    --   },
    -- }

    -- Load the colorscheme here.
    vim.cmd.colorscheme 'rose-pine-moon'
  end,
}
