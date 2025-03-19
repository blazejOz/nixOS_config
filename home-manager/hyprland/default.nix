{ config, pkgs, ... }:

{
  # imports = [
  #   #./hyprland.nix
  #   #./waybar.nix
  #   # Add other components here
  # ];

  home.packages = with pkgs; [
    #FONTS
    nerd-fonts.jetbrains-mono
    nerd-fonts.hack
    font-awesome
    noto-fonts-emoji

    waybar
  ];  


   home = {
        file = {
          ".config/hypr/hyprland.conf".source = ./hypr/hyprland.conf;
          ".config/waybar/config.jsonc".source = ./waybar/config.jsonc;
          ".config/waybar/style.css".source = ./waybar/style.css;
        };
   };


}
