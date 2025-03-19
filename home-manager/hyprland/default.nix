{ config, pkgs, ... }:

{
  imports = [
    #./hyprland.nix
    ./waybar.nix
    # Add other components here
  ];
}
