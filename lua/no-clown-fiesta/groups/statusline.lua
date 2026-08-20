local M = {}

function M.highlight(palette, opts)
  local bg_bg = opts.transparent and palette.none or palette.bg
  local bg_alt_bg = opts.transparent and palette.none or palette.alt_bg
  return {
    StatusLine = { fg = palette.fg, bg = bg_bg },
    StatusLineNC = { fg = palette.fg, bg = bg_alt_bg },
    StatusLineSeparator = { fg = palette.bg },
    StatusLineTerm = { fg = palette.bg },
    StatusLineTermNC = { fg = palette.bg },
  }
end

return M
