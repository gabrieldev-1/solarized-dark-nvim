local M = {}

function M.get_highlights(colors)
  return {
    NeoTreeNormal =             { fg = colors.fg, bg = colors.bg },
    NeoTreeNormalNC =           { fg = colors.fg, bg = colors.bg },
    NeoTreeDirectoryName =      { fg = colors.blue, bold = true  },
    NeoTreeDirectoryIcon =      { fg = colors.blue },
    NeoTreeFileName =           { fg = colors.fg },
    NeoTreeGitAdded =           { fg = colors.green },
    NeoTreeGitModified =        { fg = colors.yellow },
    NeoTreeGitDeleted =         { fg = colors.red },
    NeoTreeGitUntracked =       { fg = colors.magenta },
  }
end

return M