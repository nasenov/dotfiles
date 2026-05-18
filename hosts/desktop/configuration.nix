{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/common.nix
    ../../modules/crypto.nix
    ../../modules/docker.nix
    ../../modules/gaming.nix
    ../../modules/nix.nix
  ];

  networking.hostName = "desktop";

}
