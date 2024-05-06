return {

  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    local header = {
      [[                                                                   ]],
      [[      ████ ██████           █████      ██                    ]],
      [[     ███████████             █████                            ]],
      [[     █████████ ███████████████████ ███   ███████████  ]],
      [[    █████████  ███    █████████████ █████ ██████████████  ]],
      [[   █████████ ██████████ █████████ █████ █████ ████ █████  ]],
      [[ ███████████ ███    ███ █████████ █████ █████ ████ █████ ]],
      [[██████  █████████████████████ ████ █████ █████ ████ ██████]],
    }

    local function colorize_header()
      local catppuccin = require('catppuccin.palettes').get_palette()
      local colors = {
        catppuccin.red,
        catppuccin.red,
        catppuccin.peach,
        catppuccin.yellow,
        catppuccin.green,
        catppuccin.sky,
        catppuccin.blue,
        catppuccin.mauve,
        catppuccin.overlay0,
      }
      for i, color in pairs(colors) do
        local cmd = 'hi StartLogo' .. i .. ' guifg=' .. color
        vim.cmd(cmd)
      end

      local lines = {}

      for i, chars in pairs(header) do
        local line = {
          type = 'text',
          val = chars,
          opts = {
            hl = 'StartLogo' .. i,
            shrink_margin = false,
            position = 'center',
          },
        }

        table.insert(lines, line)
      end

      return lines
    end

    _Gopts = {
      position = 'center',
      hl = 'Type',
      -- wrap = "overflow";
    }

    local function footer()
      return "Haskell can suck mo' nads"
    end
    dashboard.section.footer.val = footer()
    -- dashboard.section.header.val = colorize_header()
    dashboard.opts.opts.noautocmd = true
    alpha.setup {
      layout = {
        { type = 'padding', val = 8 },
        { type = 'group',   val = colorize_header() },
        { type = 'padding', val = 3 },
        dashboard.section.buttons,
        { type = 'padding', val = 1 },
        dashboard.section.footer,
      },
      dashboard.opts,
    }
  end,
}
