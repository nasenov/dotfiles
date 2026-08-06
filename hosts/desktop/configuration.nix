{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/ai.nix
    ../../modules/apps.nix
    ../../modules/browser.nix
    ../../modules/common.nix
    ../../modules/crypto.nix
    ../../modules/development.nix
    ../../modules/gaming.nix
    ../../modules/kubernetes.nix
    ../../modules/nix.nix
    ../../modules/terminal.nix
    ../../modules/terraform.nix
    ../../modules/virtualisation.nix
  ];

  networking.hostName = "desktop";

}
