return { 
  "catppuccin/nvim", 
  name = "catppuccin",
  priority = 1000,
  config = function()
    -- setting up catppuccin
    require("catppuccin").setup()
    vim.cmd.colorscheme "catppuccin"
  end
}
