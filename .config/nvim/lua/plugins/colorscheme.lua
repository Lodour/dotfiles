return {
  -- Add gruvbox.nvim (the Lua port with treesitter support)
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      contrast = "hard", -- "hard", "medium" (default), or "soft"
    },
  },

  -- Tell LazyVim to use gruvbox instead of tokyonight
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
