local M = {}
local colors = require("solarized-dark.colors")

function M.setup()
    local highlights = {
        -- Interface UI
        ColorColumn          = { bg = colors.base02 },
        Conceal              = { bg = "NONE" },
        Cursor               = { fg = colors.text, bg = colors.base02 },
        CursorLine           = { bg = colors.base02 },
        Directory            = { fg = colors.blue },
        EndOfBuffer          = { fg = colors.base05 },
        ErrorMsg             = { fg = colors.text, bg = colors.red },
        WinSeparator         = { fg = colors.border },
        Folded               = { bg = colors.base02 },
        SignColumn           = { fg = colors.magenta },
        IncSearch            = { fg = colors.base01, bg = colors.orange },
        LineNr               = { fg = colors.comment },
        CursorLineNr         = { fg = colors.base04, bold = true },
        MatchParen           = { fg = colors.text, bg = colors.border, bold = true },
        ModeMsg              = { fg = colors.blue, bold = true },
        MsgArea              = { fg = colors.comment },
        MoreMsg              = { fg = colors.blue },
        NonText              = { fg = colors.comment },
        Normal               = { fg = colors.text, bg = colors.base01 },
        NormalFloat          = { fg = colors.text, bg = colors.base02 },
        FloatBorder          = { fg = colors.border },
        NormalNC             = { fg = colors.comment, bg = colors.base01 },
        Question             = { fg = colors.yellow },
        StatusLine           = { fg = colors.base01, bg = colors.text },
        StatusLineNC         = { fg = colors.text, bg = colors.base02 },
        TabLine              = { fg = colors.comment, bg = colors.base01 },
        TabLineFill          = { bg = colors.base01 },
        TabLineSel           = { fg = colors.text, bg = colors.base02, bold = true },
        Title                = { fg = colors.base04, bold = true },
        Visual               = { bg = colors.border },
        VisualNOS            = { bg = colors.border },
        WarningMsg           = { fg = colors.orange },
        Whitespace           = { fg = colors.border },
        WildMenu             = { fg = colors.text, bg = colors.base02 },
        WinBar               = { fg = colors.text, bg = colors.base01 },
        WinBarNC             = { fg = colors.comment, bg = colors.base01 },

        -- Popup Menu (Autocompletar)
        Pmenu                = { fg = colors.text, bg = colors.base02 },
        PmenuSel             = { fg = colors.base01, bg = colors.blue },
        PmenuSbar            = { bg = colors.base02 },
        PmenuThumb           = { bg = colors.border },

        -- Spell
        SpellBad             = { sp = colors.red, undercurl = true },
        SpellCap             = { sp = colors.orange, undercurl = true },
        SpellLocal           = { sp = colors.magenta, undercurl = true },
        SpellRare            = { sp = colors.violet, undercurl = true },

        -- Diffs
        DiffAdd              = { bg = colors.green },
        DiffChange           = { bg = colors.yellow },
        DiffDelete           = { fg = colors.red, bg = colors.base01 },
        DiffText             = { bg = colors.blue },

        -- Syntax
        Comment              = { fg = colors.comment, italic = true },
        Constant             = { fg = colors.base05 },
        String               = { fg = colors.green },
        Character            = { fg = colors.green },
        Number               = { fg = colors.magenta },
        Boolean              = { fg = colors.magenta },
        Float                = { fg = colors.magenta },
        Identifier           = { fg = colors.base03 },
        Function             = { fg = colors.blue },
        Statement            = { fg = colors.orange },
        Conditional          = { fg = colors.orange },
        Repeat               = { fg = colors.orange },
        Label                = { fg = colors.cyan },
        Operator             = { fg = colors.orange },
        Keyword              = { fg = colors.orange },
        Exception            = { fg = colors.red },
        PreProc              = { fg = colors.orange },
        Include              = { fg = colors.orange },
        Define               = { fg = colors.orange },
        Macro                = { fg = colors.magenta },
        PreCondit            = { fg = colors.orange },
        Type                 = { fg = colors.cyan },
        StorageClass         = { fg = colors.cyan },
        Structure            = { fg = colors.cyan },
        Typedef              = { fg = colors.cyan },
        Special              = { fg = colors.blue },
        SpecialChar          = { fg = colors.base04 },
        Tag                  = { fg = colors.magenta },
        Delimiter            = { fg = colors.text },
        SpecialComment       = { fg = colors.comment },
        Debug                = { fg = colors.red },
        Underlined           = { underline = true },
        Ignore               = { fg = colors.base02 },
        Error                = { fg = colors.red, bg = colors.base01 },
        Todo                 = { fg = colors.yellow, bg = colors.base02, bold = true },

        -- LSP diagnostics
        DiagnosticError      = { fg = colors.red },
        DiagnosticWarn       = { fg = colors.orange },
        DiagnosticInfo       = { fg = colors.blue },
        DiagnosticHint       = { fg = colors.cyan },
        DiagnosticOk         = { fg = colors.green },
        DiagnosticUnderlineError = { sp = colors.red, underline = true },
        DiagnosticUnderlineWarn  = { sp = colors.orange, underline = true },
        DiagnosticUnderlineInfo  = { sp = colors.blue, underline = true },
        DiagnosticUnderlineHint  = { sp = colors.cyan, underline = true },
        DiagnosticUnderlineOk    = { sp = colors.green, underline = true },

        -- Neo-tree
        NeoTreeNormal        = { fg = colors.text, bg = colors.base01 },
        NeoTreeNormalNC      = { fg = colors.comment, bg = colors.base01 },
        NeoTreeDirectoryName  = { fg = colors.blue, bold = true },
        NeoTreeDirectoryIcon  = { fg = colors.cyan },
        NeoTreeFileName      = { fg = colors.text },
        NeoTreeGitAdded      = { fg = colors.green },
        NeoTreeGitModified    = { fg = colors.yellow },
        NeoTreeGitDeleted    = { fg = colors.red },
        NeoTreeGitUntracked   = { fg = colors.magenta },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M