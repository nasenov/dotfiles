{ ... }:
{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "desktop";

  hardware.amdgpu.initrd.enable = true;

}
