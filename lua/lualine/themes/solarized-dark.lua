local colors = require("solarized-dark.colors")

-- Tema lualine baseado diretamente na paleta solarized-dark
local theme = {
  normal = {
    a = { fg = colors.base01, bg = colors.blue, gui = "bold" },
    b = { fg = colors.base04, bg = colors.base02 },
    c = { fg = colors.base04, bg = colors.base01 },
  },
  insert = {
    a = { fg = colors.base01, bg = colors.green, gui = "bold" },
    b = { fg = colors.base01, bg = colors.base02, gui = "bold" }, -- nome do arquivo em modo insert (destacado)
    c = { fg = colors.base04, bg = colors.base01 },
  },
  visual = {
    a = { fg = colors.base01, bg = colors.magenta, gui = "bold" },
    b = { fg = colors.base04, bg = colors.base02 }, -- nome do arquivo em modo visual
    c = { fg = colors.base04, bg = colors.base01 },
  },
  replace = {
    a = { fg = colors.base01, bg = colors.orange, gui = "bold" },
    b = { fg = colors.base04, bg = colors.base02 },
    c = { fg = colors.base04, bg = colors.base01 },
  },
  command = {
    a = { fg = colors.base01, bg = colors.yellow, gui = "bold" },
    b = { fg = colors.base04, bg = colors.base02 },
    c = { fg = colors.base04, bg = colors.base01 },
  },
  -- modos especiais e inativos
  inactive = {
    a = { fg = colors.base03, bg = colors.base01 },
    b = { fg = colors.base03, bg = colors.base01 },
    c = { fg = colors.base03, bg = colors.base01 },
  },
}

return theme