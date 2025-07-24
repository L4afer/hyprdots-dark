local themes = {
  "onedark",
  "tokyonight",
  "catppuccin-mocha",
  "gruvbox",
}

local current = 1

local function apply_theme(name)
  vim.cmd("colorscheme " .. name)
end

local function next_theme()
  current = current + 1
  if current > #themes then
    current = 1
  end
  apply_theme(themes[current])
  print("Colorscheme set to: " .. themes[current])
end

return {
  next = next_theme,
}

