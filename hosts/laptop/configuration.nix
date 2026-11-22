{ nixos-hardware, ... }:
{
  imports = [
    ./hardware-configuration.nix
    nixos-hardware.nixosModules.lenovo-legion-16ach6h-nvidia
  ];

  networking.hostName = "laptop";

  # S3 (deep) sleep hangs on resume in nvidia-only (DDG) mode
  boot.kernelParams = [ "mem_sleep_default=s2idle" ];

  hardware.bluetooth.enable = true;

  services.logind.settings.Login.HandleLidSwitch = "ignore";

}
