{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nixd
    nixfmt
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
