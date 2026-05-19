{ pkgs, ... }:
{
  programs = {
    foot = {
      enable = true;
      theme = "jetbrains-darcula";
      xdg.serverAutostart = true;
    };

    zsh = {
      enable = true;
    };
  };

  users.defaultUserShell = pkgs.zsh;
}
