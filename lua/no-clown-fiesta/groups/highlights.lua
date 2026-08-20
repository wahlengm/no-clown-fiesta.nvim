
local M = {}

function M.highlight(palette, opts)
  local bg_bg = opts.transparent and "none" or palette.bg
  local bg_blue = opts.transparent and "none" or palette.blue
  local bg_alt_bg = opts.transparent and "none" or palette.alt_bg
  local bg_accent = opts.transparent and "none" or palette.accent
  local bg_yellow = opts.transparent and "none" or palette.yellow
  local bg_light_gray = opts.transparent and "none" or palette.light_gray
  local bg_accent_red = opts.transparent and "none" or palette.accent_red
  local bg_accent_blue = opts.transparent and "none" or palette.accent_blue
  local bg_accent_green = opts.transparent and "none" or palette.accent_green
  local bg_accent_lighter_blue = opts.transparent and "none" or palette.accent_lighter_blue

  return {
    Normal = {
      fg = palette.fg,
      bg = bg_bg,
    },
    SignColumn = { bg = bg_bg },
    MsgArea = {
      fg = palette.fg,
      bg = bg_bg,
    },
    ModeMsg = { fg = palette.fg, bg = bg_bg },
    MsgSeparator = { fg = palette.fg, bg = bg_bg },
    SpellBad = { sp = palette.error, undercurl = true },
    SpellCap = { sp = palette.yellow, undercurl = true },
    SpellLocal = { sp = palette.sign_add, undercurl = true },
    SpellRare = { sp = palette.purple, undercurl = true },
    NormalNC = {
      fg = palette.fg,
      bg = bg_bg,
    },
    Pmenu = { fg = palette.light_gray, bg = bg_accent },
    PmenuSel = { bg = bg_blue, fg = palette.gray, reverse = true },
    PmenuMatchSel = { bg = bg_yellow, fg = palette.gray, reverse = true },
    WildMenu = { fg = palette.blue, bg = bg_alt_bg },
    CursorLineNr = {
      fg = palette.light_gray,
      bold = true,
    },
    Comment = vim.tbl_extend(
      "force",
      { fg = palette.medium_gray },
      opts.styles.comments
    ),
    Folded = { fg = palette.light_gray, bg = bg_alt_bg },
    FoldColumn = { fg = palette.light_gray, bg = bg_alt_bg },
    LineNr = { fg = palette.medium_gray },
    Whitespace = { fg = palette.gray },
    VertSplit = { fg = palette.bg, bg = bg_accent },
    CursorLine = {
      bg = bg_alt_bg,
    },
    CursorColumn = { bg = bg_alt_bg },
    ColorColumn = { bg = bg_alt_bg },
    NormalFloat = {
      bg = bg_alt_bg,
    },
    Visual = { bg = palette.gray },
    VisualNOS = { bg = palette.alt_bg },
    WarningMsg = { fg = palette.error, bg = bg_bg },
    DiffAdd = { bg = bg_accent_green },
    DiffText = { fg = palette.fg, bg = bg_accent_lighter_blue },
    Changed = {
      fg = palette.sign_change,
    },
    DiffChange = {
      fg = palette.sign_change,
      bg = bg_accent_blue,
    },
    DiffDelete = { fg = palette.sign_delete, bg = bg_accent_red },
    QuickFixLine = { bg = bg_accent },
    PmenuSbar = { bg = bg_alt_bg },
    PmenuThumb = { bg = bg_light_gray },
    MatchWord = { underline = true },
    MatchParen = vim.tbl_extend(
      "force",
      { fg = palette.blue, bg = bg_bg, underline = true },
      opts.styles.match_paren
    ),
    MatchWordCur = { underline = true },
    MatchParenCur = { underline = true },
    Cursor = { fg = palette.cursor_fg, bg = palette.cursor_bg },
    lCursor = { fg = palette.cursor_fg, bg = palette.cursor_bg },
    CursorIM = { fg = palette.cursor_fg, bg = palette.cursor_bg },
    TermCursor = {
      fg = palette.cursor_fg,
      bg = palette.cursor_bg,
      reverse = false,
    },
    TermCursorNC = {
      fg = palette.alt_bg,
      reverse = false,
    },
    Conceal = { fg = palette.fg },
    Directory = { fg = palette.blue },
    SpecialKey = { fg = palette.blue },
    Title = { fg = palette.blue },
    ErrorMsg = { fg = palette.error, bg = bg_bg, bold = true },
    Search = { fg = palette.orange, bg = bg_alt_bg },
    IncSearch = { fg = palette.alt_bg, bg = palette.orange },
    Substitute = { fg = palette.alt_bg, bg = palette.orange },
    MoreMsg = { fg = palette.cyan },
    Question = { fg = palette.cyan },
    EndOfBuffer = { fg = palette.gray },
    NonText = { fg = palette.fg },
    Variable = vim.tbl_extend("force", { fg = palette.fg }, opts.styles.variables),
    String = { fg = palette.medium_gray_blue },
    Character = { fg = palette.green },
    Constant = { fg = palette.fg },
    Number = { fg = palette.red },
    Boolean = { fg = palette.red },
    Float = { fg = palette.red },
    Identifier = { fg = palette.fg },
    Function = vim.tbl_extend("force", { fg = palette.cyan }, opts.styles.functions),
    Operator = { fg = palette.fg },
    Type = vim.tbl_extend("force", { fg = palette.fg }, opts.styles.type),
    StorageClass = { fg = palette.gray_blue },
    Structure = { fg = palette.gray_blue },
    Typedef = { fg = palette.fg },
    Keyword = vim.tbl_extend("force", { fg = palette.gray_blue }, opts.styles.keywords),
    Statement = { fg = palette.gray_blue },
    Conditional = { fg = palette.gray_blue },
    Repeat = { fg = palette.gray_blue },
    Label = { fg = palette.fg },
    Exception = { fg = palette.red },
    Include = { fg = palette.red },
    PreProc = { fg = palette.fg },
    Define = { fg = palette.red },
    Macro = { fg = palette.cyan },
    PreCondit = { fg = palette.medium_gray },
    Special = { fg = palette.fg },
    SpecialChar = { fg = palette.medium_gray_blue },
    Tag = { fg = palette.blue },
    Debug = { fg = palette.red },
    Delimiter = { fg = palette.fg },
    SpecialComment = vim.tbl_extend(
      "force",
      { fg = palette.medium_gray },
      opts.styles.comments
    ),
    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = palette.cyan, bg = bg_bg, bold = true },
    Todo = { fg = palette.red, bg = bg_bg, bold = true },
    Error = { fg = palette.error, bg = bg_bg, bold = true },
    TabLine = { fg = palette.gray, bg = bg_alt_bg },
    TabLineSel = { fg = palette.fg, bg = bg_alt_bg },
    TabLineFill = { fg = palette.fg, bg = bg_alt_bg },
    WinSeparator = { fg = palette.medium_gray, bg = bg_bg },
    DiagnosticFloatingError = { fg = palette.error },
    FloatBorder = { fg = palette.light_gray },
  }
end

return M
