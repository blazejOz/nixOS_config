{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    #FONTS
    nerd-fonts.jetbrains-mono
    nerd-fonts.hack
    font-awesome
    noto-fonts-emoji

    #cursor theme
    adwaita-icon-theme

    waybar
  ];  

    gtk.cursorTheme = {
    name = "Adwaita";
    size = 24;
    package = pkgs.adwaita-icon-theme;
  };

  home.sessionVariables = {
    XCURSOR_THEME = "Adwaita";
    XCURSOR_SIZE = "24";
  };


  #  xdg.configFile = {
  #         ".config/hypr/hyprland.conf".source = ./hypr/hyprland.conf;
  #         ".config/waybar/config.jsonc".source = ./waybar/config.jsonc;
  #         ".config/waybar/style.css".source = ./waybar/style.css;
  #       };

  xdg.configFile."hypr/hyprland.conf".source = ./hypr/hyprland.conf;
  xdg.configFile."waybar/config.jsonc".source = ./waybar/config.jsonc;
  xdg.configFile."waybar/style.css".source = ./waybar/style.css;



}
