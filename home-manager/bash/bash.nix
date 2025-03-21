{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;

    profileExtra = ''
      if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
        exec Hyprland
      fi
    '';

    shellAliases = {
      ls = "ls --color=auto";   
      ll = "ls -lah";
      ".." = "cd ..";
    };
  };
}
