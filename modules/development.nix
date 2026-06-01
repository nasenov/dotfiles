{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    bitwarden-cli
    btop
    bws
    chezmoi
    dbeaver-bin
    dnsutils
    git
    go
    inetutils
    jq
    just
    just-lsp
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
