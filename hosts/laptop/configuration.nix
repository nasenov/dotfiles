{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/common.nix
    ../../modules/crypto.nix
    ../../modules/docker.nix
    ../../modules/gaming.nix
    ../../modules/kubernetes.nix
    ../../modules/nix.nix
    ../../modules/terminal.nix
    ../../modules/virtualisation.nix
  ];

  networking.hostName = "laptop";

  hardware.bluetooth.enable = true;

  services.logind.settings.Login.HandleLidSwitch = "ignore";

}
