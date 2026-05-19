{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    google-chrome
    libreoffice
    obsidian
    telegram-desktop
  ];
}
