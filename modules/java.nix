{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    graalvmPackages.graalvm-ce
    gradle
    jdk25
    jetbrains.idea
  ];

  environment.variables = with pkgs; {
    JAVA_HOME = jdk25.home;
    GRAALVM_HOME = graalvmPackages.graalvm-ce.home;
  };
}
