{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    jdk25
    jetbrains.idea
  ];
}
