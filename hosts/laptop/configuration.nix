{ nixos-hardware, ... }:
{
  imports = [
    ./hardware-configuration.nix
    nixos-hardware.nixosModules.lenovo-legion-16ach6h-nvidia
  ];

  networking.hostName = "laptop";

  boot.extraModprobeConfig = "options nvidia NVreg_DynamicPowerManagement=0x00";

  hardware.bluetooth.enable = true;

  services.logind.settings.Login.HandleLidSwitch = "ignore";

}
