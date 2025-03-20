{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        vimAlias = true;

        plugins = with pkgs.vimPlugins; [
            nvim-treesitter
            #catppuccin-nvim
        ];

        # extraPackages = with pkgs; [
        
        # ];
  
    };

    xdg.configFile."nvim/init.lua".source = ./nvim/init.lua;

}
