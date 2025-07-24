require("config.lazy")
vim.cmd.colorscheme("monochrome")

local plugin = {
	'nvim-telescope/telescope.nvim', tag = '0,1,5',

	dependencies = { 'nvim-lua/plenary.nvim' }

}

vim.keymap.set("n", "<leader>ut", function()
  require("config.theme_switcher").next()
end, { desc = "Toggle Theme" })

vim.opt.number = true           -- Absolute line numbers
vim.opt.relativenumber = false -- Disable relative line numbers

