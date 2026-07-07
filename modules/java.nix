{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    graalvmPackages.graalvm-ce
    gradle
    jdk25
    jetbrains.idea
  ];

  programs.java = {
    enable = true;
    package = pkgs.graalvmPackages.graalvm-ce;
  };

}
