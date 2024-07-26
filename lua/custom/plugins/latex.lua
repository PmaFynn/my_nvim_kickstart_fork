-- lazy.nvim setup
return {
  {
    'lervag/vimtex',
    config = function()
      -- VimTeX configuration
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_compiler_latexmk = {
        options = {
          '-pdf',
          '-shell-escape',
          '-verbose',
          '-file-line-error',
          '-synctex=1',
          '-interaction=nonstopmode',
        },
      }

      -- Function to compile LaTeX without opening quickfix list
      _G.compile_latex = function()
        vim.cmd 'silent make'
        vim.cmd 'echo "Compilation finished"'
      end

      -- Keymap to compile LaTeX without opening quickfix list
      vim.api.nvim_set_keymap('n', '<leader>ll', ':lua compile_latex()<CR>', { noremap = true, silent = true })

      -- Keymap to manually open quickfix list
      vim.api.nvim_set_keymap('n', '<leader>qq', '<cmd>copen<CR>', { noremap = true, silent = true })

      -- Optionally, set makeprg and errorformat for LaTeX
      vim.opt.makeprg = 'latexmk -pdf -interaction=nonstopmode %'
      vim.opt.errorformat = '%f:%l:%c: %m'
    end,
  },
}
