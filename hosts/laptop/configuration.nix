{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/apps.nix
    ../../modules/common.nix
    ../../modules/crypto.nix
    ../../modules/development.nix
    ../../modules/docker.nix
    ../../modules/gaming.nix
    ../../modules/java.nix
    ../../modules/javascript.nix
    ../../modules/kubernetes.nix
    ../../modules/nix.nix
    ../../modules/terminal.nix
    ../../modules/terraform.nix
    ../../modules/virtualisation.nix
  ];

  networking.hostName = "laptop";

  hardware.bluetooth.enable = true;

  services.logind.settings.Login.HandleLidSwitch = "ignore";

}
