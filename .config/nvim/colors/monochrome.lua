-- ~/.config/nvim/colors/monochrome.lua

vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.termguicolors = true
vim.g.colors_name = "monochrome"

local fg = "#d0d0d0"
local bg = "#1c1c1c"
local dim = "#444444"
local alt = "#2a2a2a"
local err = "#ff5f5f"

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- UI
hi("Normal",         { fg = fg, bg = bg })
hi("NormalNC",       { fg = fg, bg = alt })
hi("Visual",         { bg = dim })
hi("CursorLine",     { bg = alt })
hi("CursorColumn",   { bg = alt })
hi("LineNr",         { fg = dim })
hi("CursorLineNr",   { fg = fg, bold = true })
hi("StatusLine",     { fg = fg, bg = alt })
hi("StatusLineNC",   { fg = dim, bg = alt })
hi("VertSplit",      { fg = alt })
hi("Pmenu",          { fg = fg, bg = alt })
hi("PmenuSel",       { bg = dim })

-- Syntax
hi("Comment",        { fg = dim, italic = true })
hi("Keyword",        { fg = fg, bold = true })
hi("String",         { fg = fg })
hi("Function",       { fg = fg })
hi("Identifier",     { fg = fg })
hi("Type",           { fg = fg, bold = true })
hi("Number",         { fg = fg })

-- Diagnostics
hi("DiagnosticError", { fg = err })
hi("DiagnosticWarn",  { fg = fg })
hi("DiagnosticInfo",  { fg = fg })
hi("DiagnosticHint",  { fg = dim })

-- Treesitter
hi("@variable",     { fg = fg })
hi("@function",     { fg = fg })
hi("@comment",      { fg = dim, italic = true })
hi("@keyword",      { fg = fg, bold = true })
hi("@type",         { fg = fg })

-- Telescope
hi("TelescopeBorder",   { fg = dim })
hi("TelescopePrompt",   { fg = fg, bg = alt })
hi("TelescopeResults",  { fg = fg, bg = bg })
hi("TelescopeSelection",{ bg = dim })

-- GitSigns (optional)
hi("GitSignsAdd",    { fg = fg })
hi("GitSignsChange", { fg = fg })
hi("GitSignsDelete", { fg = err })

