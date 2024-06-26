# modules/desktop/keepassxc.nix

{ config, options, lib, pkgs, ... }:

with lib;
with lib.my;
let cfg = config.modules.desktop.keepassxc;
in {
  options.modules.desktop.keepassxc = {
    enable = mkBoolOpt false;
  };

  config = mkIf cfg.enable {
    user.packages = with pkgs; [
      keepassxc
    ];

    home.configFile = {
      "keepassxc/keepassxc.ini".source = "${configDir}/keepassxc/keepassxc.ini";
    };
  };
}
