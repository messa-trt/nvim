return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require('rose-pine').setup({
      variant = "main", -- options: main, moon, dawn
      dark_variant = "main",
      disable_background = false,
      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },
    })
    vim.cmd('colorscheme rose-pine')
  end,
}
