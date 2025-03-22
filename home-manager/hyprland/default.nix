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
    
    #Hyprland
    waybar
    hyprpaper
    hyprpolkitagent
    mako
    libnotify
    bluetui
    grim
    slurp
    wl-clipboard
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

  xdg.configFile."hypr".source = ./hypr;
  xdg.configFile."waybar".source = ./waybar;




}
