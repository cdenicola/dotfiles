return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = false,
      float = {
        transparent = false,
        solid = true,
      },
      term_colors = true,
      dim_inactive = {
        enabled = false,
      },
      lsp_styles = {
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
          ok = { "italic" },
        },
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
          ok = { "undercurl" },
        },
        inlay_hints = {
          background = true,
        },
      },
      auto_integrations = true,
      integrations = {
        fidget = true,
        lualine = {
          all = function(colors)
            return {
              normal = {
                c = { bg = colors.base },
              },
            }
          end,
        },
        mini = {
          enabled = true,
        },
        telescope = {
          enabled = true,
        },
      },
      custom_highlights = function(colors)
        return {
          CursorLine = { bg = colors.surface0 },
          CursorLineNr = { fg = colors.peach, bold = true },
          FloatBorder = { fg = colors.blue, bg = colors.mantle },
          NormalFloat = { bg = colors.mantle },
          Pmenu = { bg = colors.mantle },
          PmenuSel = { bg = colors.surface1, bold = true },
          Visual = { bg = colors.surface1 },
          WinSeparator = { fg = colors.surface1 },
        }
      end,
    },
  },
}
