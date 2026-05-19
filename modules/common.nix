{ pkgs, ... }:
{
  hardware.enableAllFirmware = true;

  boot.plymouth.enable = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.editor = false;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "Europe/Sofia";

  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.xserver.xkb = {
    layout = "us,bg";
    variant = ",phonetic";
    options = "grp:alt_shift_toggle";
  };

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  networking.networkmanager.enable = true;

  users.defaultUserShell = pkgs.zsh;

  users.users.nasenov = {
    isNormalUser = true;
    description = "Nikolay Asenov";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    bitwarden-cli
    bws
    chezmoi
    dbeaver-bin
    dnsutils
    git
    go
    go-task
    google-chrome
    inetutils
    jdk
    jetbrains.idea
    jq
    libreoffice
    mise
    nerd-fonts.jetbrains-mono
    obsidian
    oh-my-zsh
    openssl
    pciutils
    rclone
    telegram-desktop
    vim
    vscode
    yamllint
    yq-go
    zsh
  ];

  programs.zsh.enable = true;

  system.stateVersion = "25.11";
}
