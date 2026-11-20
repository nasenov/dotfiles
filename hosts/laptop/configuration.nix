{ nixos-hardware, ... }:
{
  imports = [
    ./hardware-configuration.nix
    nixos-hardware.nixosModules.lenovo-legion-16ach6h
  ];

  networking.hostName = "laptop";

  hardware.bluetooth.enable = true;

  services.logind.settings.Login.HandleLidSwitch = "ignore";

}
