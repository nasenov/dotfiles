{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    libreoffice
    obsidian
    remmina
    telegram-desktop
    vlc
  ];
}
