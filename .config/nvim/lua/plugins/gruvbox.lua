return {
  "ellisonleao/gruvbox.nvim",
  lazy = true,              -- only loads if you explicitly `:colorscheme gruvbox`
  priority = 1000,
  config = function()
    -- Uncomment this line to use Gruvbox as default instead:
    -- vim.o.background = "dark"
    -- vim.cmd.colorscheme("gruvbox")
  end,
}

