{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    libreoffice
    obsidian
    remmina
    rustdesk
    telegram-desktop
    vlc
    woeusb-ng
  ];
}
