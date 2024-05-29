return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
            [[                                                                                ]],
            [[ =================     ===============     ===============   ========  ======== ]],
            [[ \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . // ]],
            [[ ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .|| ]],
            [[ || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . || ]],
            [[ ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .|| ]],
            [[ || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || ]],
            [[ ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .|| ]],
            [[ || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || ]],
            [[ ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.|| ]],
            [[ ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `|| ]],
            [[ ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   || ]],
            [[ ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   || ]],
            [[ ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   || ]],
            [[ ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   || ]],
            [[ ||   .=='    _-'          `-__\._-'         `-_./__-'         `' |. /|  |   || ]],
            [[ ||.=='    _-'                                                     `' |  /==.|| ]],
            [[ =='    _-'                                                            \/   `== ]],
            [[ \   _-'                                                                `-_   / ]],
            [[  `''                                                                      ``'  ]],
            [[                                                                                ]],
          },
          center = {
            {
              icon_hl = 'red',
              desc = 'Search Files           ',
              desc_hl = 'string',
              key = '<leader> s f',
              key_hl = 'number',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'lua print(2)',
            },
            {
              desc = 'Search Grep',
              desc_hl = 'string',
              key = '<leader> s g',
              key_hl = 'number',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'lua print(3)',
            },
            {
              desc = 'Telescope Builtin',
              desc_hl = 'string',
              key = '<leader> s s',
              key_hl = 'number',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'lua print(3)',
            },
            {
              desc = 'Find recently opened files',
              desc_hl = 'string',
              key = '<leader> s .',
              key_hl = 'number',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'lua print(3)',
            },
            {
              desc = 'Current buffer fuzzy search',
              desc_hl = 'string',
              key = '<leader> /',
              key_hl = 'number',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'lua print(3)',
            },
          },
          footer = {}, --your footer
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
