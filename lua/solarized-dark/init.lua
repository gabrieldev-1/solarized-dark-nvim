local M = {}
local colors = require(solarized-dark.colors)
local neotree = require(solarized-dark.plugins.neo-tree)

function M.setup()
    local highlights = {
        Normal =        { fg = palette.fg, bg = palette.bg },
        CursorLine =    { bg = palette.bg_highlight },
        LineNr =        { fg = palette.comment },
    }

-- Mescla os grupos do Neo-tree na tabela principal
    local plugin_highlights = neotree.get_highlights(palette)
    for group, opts in pairs(plugin_highlights) do
        highlights[group] = opts
    end

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M