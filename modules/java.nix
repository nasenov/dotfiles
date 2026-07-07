{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    graalvmPackages.graalvm-ce
    gradle
    jdk25
    jetbrains.idea
  ];
}
