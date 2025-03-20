{ config, pkgs, ... }:

{

  imports = [
    ./hyprland/default.nix
    ./neovim/default.nix
  ];


  # Home Manager needs a bit of information about you and the paths it should
  # manage.
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
  
  programs.kitty = {
  enable = true;
  settings = {
    confirm_os_window_close = "0";
    };
  };

 
 
 
  home.packages = with pkgs; [
   
  ];



  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/blaz/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
  home.stateVersion = "24.11"; 
}
