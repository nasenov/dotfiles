{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    bitwarden-cli
    bruno
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
    oxfmt
    pciutils
    rclone
    vim
    vscode
    yamllint
    yq-go
  ];
}
