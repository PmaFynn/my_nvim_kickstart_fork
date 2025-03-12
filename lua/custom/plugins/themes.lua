return {
  { 'catppuccin/nvim', priority = 43 },
  { 'rebelot/kanagawa.nvim', priority = 899 },
  { 'rose-pine/neovim', priority = 839 },
  {
    'nyoom-engineering/oxocarbon.nvim',
    --HACK: keep prio hightest for init function
    priority = 2000,
    --HACK: This is where the colorscheme is acutally set
    init = function()
      vim.o.background = 'light' -- or "light" for light mode
      vim.cmd.colorscheme 'gruvbox'

      vim.cmd.hi 'Comment gui=none'
    end,
  },
  { 'navarasu/onedark.nvim', priority = 299 },
  { 'ellisonleao/gruvbox.nvim', priority = 1000, config = true, opts = ... },
}
