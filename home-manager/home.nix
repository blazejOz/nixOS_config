{ config, pkgs, ... }:

{

  imports = [
    ./hyprland/defaultHyprland.nix
    ./neovim/defaultNvim.nix
    ./bash/bash.nix
  ];

  home.username = "blaz";
  home.homeDirectory = "/home/blaz";

  programs.vscode = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        ms-python.python
        ms-vscode.cpptools
	      vscodevim.vim
        jeff-hykin.better-nix-syntax
      ];
    };
  };


  programs.git = {
    enable = true;
    userName  = "blazejOz";
    userEmail = "blazej.ozog@gmail.com";
  };
  

 
 
  home.packages = with pkgs; [
	vlc
	qbittorrent 
  ];

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
  home.stateVersion = "24.11"; 
}
