{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    libreoffice
    obsidian
    telegram-desktop
  ];
}
