{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    bitwarden-cli
    bws
    chezmoi
    dbeaver-bin
    dnsutils
    git
    go
    go-task
    inetutils
    jq
    mise
    nerd-fonts.jetbrains-mono
    openssl
    pciutils
    rclone
    vim
    vscode
    yamllint
    yq-go
  ];
}
