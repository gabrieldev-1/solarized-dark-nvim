local palette = require("solarized-black.palette")

-- Define o contraste de fundo para as seções A (ícone do modo) e B (nome do arquivo)
local theme = {
  normal = {
    a = { fg = palette.bg, bg = palette.blue, gui = "bold" },
    b = { fg = palette.fg, bg = palette.bg_highlight },
    c = { fg = palette.fg, bg = palette.bg },
  },
  insert = {
    a = { fg = palette.bg, bg = palette.green, gui = "bold" },
  },
  visual = {
    a = { fg = palette.bg, bg = palette.magenta, gui = "bold" },
  },
  replace = {
    a = { fg = palette.bg, bg = palette.orange, gui = "bold" },
  },
  command = {
    a = { fg = palette.bg, bg = palette.yellow, gui = "bold" },
  },
  inactive = {
    a = { fg = palette.comment, bg = palette.bg },
    b = { fg = palette.comment, bg = palette.bg },
    c = { fg = palette.comment, bg = palette.bg },
  },
}

return theme