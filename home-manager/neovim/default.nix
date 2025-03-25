{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        vimAlias = true;

        plugins = with pkgs.vimPlugins; [
            (nvim-treesitter.withPlugins (p: [
                p.c p.cpp p.python p.lua p.nix p.css p.json
            ]))
            lualine-nvim #status line plugin
            nvim-web-devicons #icons

            nvim-tree-lua #file explorer(side panel)

            telescope-nvim #fuzzy finder
            plenary-nvim  # Required by Telescope

            comment-nvim # easy comment

            #nvim-autopairs #auto pairing brtackets 

            #LSP 
            nvim-lspconfig

            #Theme
            tokyonight-nvim
        ];

           extraPackages = with pkgs; [
                ripgrep  # Enables :Telescope live_grep
                fd       # Faster file finding

                #LSP Servers
                lua-language-server
                pyright
                clang-tools  # for clangd
                nil  # Nix language serverv
            ];
    };

 

    # Symlink the entire Neovim configuration folder
    xdg.configFile."nvim".source = ./nvim;
}
