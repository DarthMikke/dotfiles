-- return {
--   "rebelot/kanagawa.nvim",
--   name = "kanagawa",
--   opts = {
--     transparent = true,
--   },
--   config = function(_, opts)
--     require("kanagawa").setup(opts)
--     vim.cmd.colorscheme("kanagawa")
--   end,
-- }

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
