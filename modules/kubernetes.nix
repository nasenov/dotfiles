{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fluxcd
    helmfile
    krew
    kubectl
    kubernetes-helm
    talosctl
  ];
}
