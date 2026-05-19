{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    terraform
    tflint
  ];
}
