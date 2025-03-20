


require'nvim-treesitter.configs'.setup {
    --ensure_installed = { "lua", "python", "c", "cpp", "nix" , "css" , "json" },
    highlight = { enable = true },
    indent = { enable = true },
  }


require("lualine").setup {
  options = { theme = "auto" }
}

-- Configure Tokyo Night
require("tokyonight").setup({
  style = "night",  -- Options: "storm", "moon", "night", "day"
  transparent = true,  -- Set to true for transparent background
  terminal_colors = true, -- Enable colors for Neovim terminal
  styles = {
    sidebars = "dark",
    floats = "dark",
  }
})

-- Apply the colorscheme
vim.cmd[[colorscheme tokyonight]]
