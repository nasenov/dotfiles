{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gradle
    jdk25
    jetbrains.idea
  ];
}
