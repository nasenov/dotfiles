{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nixd
    nixfmt
  ];

  nix.gc = {
    automatic = true;
    persistent = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  nix.optimise = {
    automatic = true;
    persistent = true;
    dates = "weekly";
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
