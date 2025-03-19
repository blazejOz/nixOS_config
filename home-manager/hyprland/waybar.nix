{ config, pkgs, ... }:

{
  home.packages = [ pkgs.waybar ];

  xdg.configFile."waybar/config.jsonc".text = ''
    {
      // Waybar configuration
      "layer": "top",
      "position": "top",
      "height": 30,
      "spacing": 4,
      
      "modules-left": [ "hyprland/workspaces" ],
      "modules-center": [ "clock" ],
      "modules-right": [ "pulseaudio", "bluetooth", "network", "backlight", "battery" ],

      "hyprland/workspaces": {
        "disable-scroll": true,
        "all-outputs": true,
        "warp-on-scroll": false,
        "format": "{name}: {icon}",
        "format-icons": {
          "urgent": "",
          "active": "",
          "default": ""
        }
      },

      "clock": {
        "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
        "format-alt": "{:%Y-%m-%d}"
      },

      "battery": {
        "states": { "warning": 30, "critical": 15 },
        "format": "{capacity}% {icon}",
        "format-icons": ["", "", "", "", ""]
      },

      "network": {
        "on-click": "kitty nmtui",
        "format-wifi": "({signalStrength}%) ",
        "format-ethernet": "",
        "format-disconnected": "⚠"
      },

      "pulseaudio": {
        "format": "{volume}% {icon} ",
        "format-muted": " {format_source}",
        "format-icons": {
          "default": ["", "", ""]
        },
        "on-click": "pavucontrol"
      },

      "bluetooth": {
        "format": "",
        "format-connected": "",
        "on-click": "kitty bluetui"
      }
    }
  '';

  xdg.configFile."waybar/style.css".text = ''
    * {
      font-family: "Roboto Mono Medium", Helvetica, Arial, sans-serif, FontAwesome;
      font-size: 14px;
    }

    window#waybar {
      background-color: rgba(0, 0, 0, 1);
      color: #ffffff;
    }

    #clock {
      background-color: #000000;
      color: white;
    }

    #battery {
      background-color: #000000;
      color: white;
    }

    #network {
      background-color: #000000;
      color: white;
    }

    #pulseaudio {
      background-color: #000000;
      color: #ffffff;
    }

    #temperature {
      background-color: #f0932b;
    }

    #temperature.critical {
      background-color: #eb4d4b;
    }

    #tray {
      background-color: #2980b9;
    }
  '';
}
