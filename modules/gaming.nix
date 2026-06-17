{ pkgs, ... }:
{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  environment.systemPackages = with pkgs; [
    discord
    mangohud
  ];

  programs.steam.enable = true;

  programs.gamemode = {
    enable = true;
    enableRenice = true;
  };

  programs.gamescope.enable = true;

  users.users.nasenov.extraGroups = [ "gamemode" ];
}
