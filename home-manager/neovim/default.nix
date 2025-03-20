{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        vimAlias = true;

        plugins = with pkgs.vimPlugins; [
            (nvim-treesitter.withPlugins (p: [
                p.c p.cpp p.python p.lua p.nix p.css p.json
            ]))
            lualine-nvim
            nvim-web-devicons

            #Theme
            tokyonight-nvim
        ];
    };

    # Symlink the entire Neovim configuration folder
    xdg.configFile."nvim".source = ./nvim;
}
