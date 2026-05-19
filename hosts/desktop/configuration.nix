{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/common.nix
    ../../modules/crypto.nix
    ../../modules/development.nix
    ../../modules/docker.nix
    ../../modules/gaming.nix
    ../../modules/kubernetes.nix
    ../../modules/nix.nix
    ../../modules/terminal.nix
    ../../modules/terraform.nix
  ];

  networking.hostName = "desktop";

}
