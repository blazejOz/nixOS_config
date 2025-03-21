----- KEY MAP -------
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>t", ":split | terminal<CR>", { noremap = true, silent = true })

--buffer key map--
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true })  -- close buffer


--------PLUGINS----------

-- File explorer (nvim-tree)
require("nvim-tree").setup()
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Telescope setup
require("telescope").setup()

-- Keybindings
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })

--code color
require'nvim-treesitter.configs'.setup {
    --ensure_installed = { "lua", "python", "c", "cpp", "nix" , "css" , "json" },
    highlight = { enable = true },
    indent = { enable = true },
  }

-- status line plugin
require("lualine").setup {
  options = { theme = "auto" }
}

-- Configure Tokyo Night Theme
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





