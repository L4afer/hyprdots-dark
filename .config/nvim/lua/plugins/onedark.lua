return {
  "navarasu/onedark.nvim",
  lazy = false,            -- load on startup
  priority = 1000,         -- load before all other plugins
  config = function()
    require("onedark").setup({
      style = "darker",    -- options: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
    })
    require("onedark").load()
  end,
}

