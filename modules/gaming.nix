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

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };

  programs.gamemode = {
    enable = true;
    enableRenice = true;
    settings.general.renice = 10;
  };

  programs.gamescope.enable = true;

  users.users.nasenov.extraGroups = [ "gamemode" ];
}
