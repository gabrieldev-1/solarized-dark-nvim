local M = {}
local colors = require("solarized-dark.colors")

function M.setup()
    local highlights = {
        -- Interface UI
        ColorColumn  = { bg = colors.base02 }, -- Coluna limite de caracteres
        Conceal      = { bg = "NONE" }, -- Elementos ocultos/substituídos
        Cursor       = { fg = colors.base04, bg = colors.base02 }, -- Cursor principal
        -- CursorColumn = { bg = "" }, -- Destaca coluna do cursor
        CursorLine   = { bg = colors.base02 }, -- Destaca linha do cursor
        Directory    = { fg = colors.base04 }, -- Nomes de diretórios no netrw/Telescope
        EndOfBuffer  = { fg = colors.base04 }, -- Tils (~) no fim do arquivo
        ErrorMsg     = { fg = colors.base04, bg = colors.red }, -- Mensagens de erro no cmdline
        WinSeparator = { fg = colors.base02 }, -- Bordas entre splits (Antigo VertSplit)
        Folded       = { bg = colors.base04 }, -- Código minimizado (fold)
        SignColumn   = { fg = colors.magenta }, -- Coluna lateral (ícones de git, lsp)
        IncSearch    = { fg = colors.base02, bg = colors.yellow }, -- Destaque 'incremental search'
        LineNr       = { fg = colors.base03 }, -- Números das linhas
        CursorLineNr = { fg = colors.base04, bold = true }, -- Número da linha atual
        MatchParen   = { fg = colors.base04, bg = colors.base03, bold = true }, -- Pares de parênteses/chaves
        ModeMsg      = { fg = colors.blue, bold = true }, -- Mensagem de modo (ex: -- INSERT --)
        MsgArea      = { fg = colors.base03 }, -- Área de mensagens (cmdline inferior)
        MoreMsg      = { fg = colors.blue }, -- Mensagem "-- Mais --"
        NonText      = { fg = colors.base03 }, -- Caracteres invisíveis (ex: eol, extends)
        Normal       = { fg = colors.base04, bg = colors.base01 }, -- Fundo e texto principal
        NormalFloat  = { fg = colors.base04, bg = colors.base02 }, -- Fundo de janelas flutuantes
        FloatBorder  = { fg = colors.blue }, -- Borda de janelas flutuantes
        NormalNC     = { fg = colors.base03, bg = colors.base01 }, -- Fundo de janelas inativas
        Question     = { fg = colors.yellow }, -- Prompts de confirmação
        StatusLine   = { fg = colors.base02, bg = colors.base04 }, -- Linha de status ativa
        StatusLineNC = { fg = colors.base04, bg = colors.base02 }, -- Linha de status inativa
        TabLine      = { fg = colors.base03, bg = colors.base01 }, -- Abas não selecionadas
        TabLineFill  = { bg = colors.base01 }, -- Fundo vazio da linha de abas
        TabLineSel   = { fg = colors.base04, bg = colors.base04, bold = true }, -- Aba selecionada
        Title        = { fg = colors.base04, bold = true }, -- Títulos de saídas HTML/Menus
        Visual       = { bg = colors.base03 }, -- Seleção de texto no modo Visual
        VisualNOS    = { bg = colors.base03 }, -- Seleção não-proprietária do Vim
        WarningMsg   = { fg = colors.orange }, -- Mensagens de aviso
        Whitespace   = { fg = colors.base03 }, -- Espaços, tabs lidos como non-text
        WildMenu     = { fg = colors.base04, bg = colors.base03 }, -- Menu de autocompletar do cmdline
        WinBar       = { fg = colors.base04, bg = colors.base01 }, -- Barra superior da janela
        WinBarNC     = { fg = colors.base03, bg = colors.base01 }, -- Barra superior da janela inativa

        -- Popup Menu (Autocompletar)
        Pmenu        = { fg = colors.base04, bg = colors.base02 }, -- Item normal do menu
        PmenuSel     = { fg = colors.base01, bg = colors.base04 }, -- Item selecionado
        PmenuSbar    = { bg = colors.base02 }, -- Barra de rolagem
        PmenuThumb   = { bg = colors.base03 }, -- Indicador da barra de rolagem

        -- Ortografia (Spell)
        SpellBad     = { sp = colors.red, undercurl = true }, -- Palavra errada
        SpellCap     = { sp = colors.yellow, undercurl = true }, -- Erro de capitalização
        SpellLocal   = { sp = colors.magenta, undercurl = true }, -- Palavra local desconhecida
        SpellRare    = { sp = colors.violet, undercurl = true }, -- Palavra rara

        -- Diffs
        DiffAdd      = { bg = colors.green }, -- Linhas adicionadas
        DiffChange   = { bg = colors.yellow }, -- Linhas alteradas
        DiffDelete   = { fg = colors.red, bg = colors.base02 }, -- Linhas deletadas
        DiffText     = { bg = colors.blue }, -- Texto exato alterado na linha

        -- Sintaxe Base
        Comment      = { fg = colors.base03, italic = true },
        Constant     = { fg = colors.cyan },
        String       = { fg = colors.green },
        Character    = { fg = colors.green },
        Number       = { fg = colors.magenta },
        Boolean      = { fg = colors.orange },
        Float        = { fg = colors.magenta },
        Identifier   = { fg = colors.green },
        Function     = { fg = colors.blue },
        Statement    = { fg = colors.red },
        Conditional  = { fg = colors.red },
        Repeat       = { fg = colors.blue },
        Label        = { fg = colors.cyan },
        Operator     = { fg = colors.red },
        Keyword      = { fg = colors.violet },
        Exception    = { fg = colors.orange },
        PreProc      = { fg = colors.orange },
        Include      = { fg = colors.violet },
        Define       = { fg = colors.orange },
        Macro        = { fg = colors.orange },
        PreCondit    = { fg = colors.orange },
        Type         = { fg = colors.cyan },
        StorageClass = { fg = colors.violet },
        Structure    = { fg = colors.violet },
        Typedef      = { fg = colors.violet },
        Special      = { fg = colors.blue },
        SpecialChar  = { fg = colors.base04 },
        Tag          = { fg = colors.magenta },
        Delimiter    = { fg = colors.base04 },
        SpecialComment = { fg = colors.base03 },
        Debug        = { fg = colors.red },
        Underlined   = { underline = true },
        Ignore       = { fg = colors.base02 },
        Error        = { fg = colors.red, bg = colors.base01 },
        Todo         = { fg = colors.yellow, bg = colors.base02, bold = true },

        -- Diagnósticos LSP
        DiagnosticError = { fg = colors.red },
        DiagnosticWarn  = { fg = colors.orange },
        DiagnosticInfo  = { fg = colors.blue },
        DiagnosticHint  = { fg = colors.cyan },
        DiagnosticOk    = { fg = colors.green },
        DiagnosticUnderlineError = { sp = colors.red, underline = true },
        DiagnosticUnderlineWarn  = { sp = colors.orange, underline = true },
        DiagnosticUnderlineInfo  = { sp = colors.blue, underline = true },
        DiagnosticUnderlineHint  = { sp = colors.cyan, underline = true },
        DiagnosticUnderlineOk    = { sp = colors.green, underline = true },

        -- Neo-tree Base
        NeoTreeNormal = { fg = colors.base04, bg = colors.base01 },
        NeoTreeNormalNC = { fg = colors.base03, bg = colors.base01 },
        
        -- Neo-tree Diretórios e Arquivos
        NeoTreeDirectoryName = { fg = colors.blue, bold = true },
        NeoTreeDirectoryIcon = { fg = colors.cyan },
        NeoTreeFileName = { fg = colors.base04 },
        
        -- Neo-tree Git Status
        NeoTreeGitAdded = { fg = colors.green },
        NeoTreeGitModified = { fg = colors.yellow },
        NeoTreeGitDeleted = { fg = colors.red },
        NeoTreeGitUntracked = { fg = colors.magenta },
    }
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M