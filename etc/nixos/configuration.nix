{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./virtualisation.nix
    ];

  hardware.enableAllFirmware = true;
  hardware.bluetooth.enable = true;
  hardware.ledger.enable = true;

  hardware.graphics.enable = true;
  hardware.nvidia.open = true;
  hardware.nvidia.powerManagement.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];

  networking.networkmanager.enable = true;

  boot.plymouth.enable = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.editor = false;
  boot.loader.efi.canTouchEfiVariables = true;

  services.logind.settings.Login.HandleLidSwitch = "ignore";

  networking.hostName = "nixos"; # Define your hostname.

  # Set your time zone.
  time.timeZone = "Europe/Sofia";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

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

  # Enable the KDE Plasma Desktop Environment
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us,bg";
    variant = ",phonetic";
    options = "grp:alt_shift_toggle";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };
  
  users.defaultUserShell = pkgs.zsh;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nasenov = {
    isNormalUser = true;
    description = "Nikolay Asenov";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    ansible
    bitwarden-cli
    bws
    chezmoi
    dbeaver-bin
    discord
    dnsutils
    docker
    docker-compose
    fluxcd
    foot
    foot.terminfo
    foot.themes
    git
    go-task
    google-chrome
    inetutils
    jdk
    jetbrains.idea
    jq
    krew
    kubectl
    kubernetes-helm
    ledger-live-desktop
    libreoffice
    nerd-fonts.jetbrains-mono
    networkmanager
    obsidian
    oh-my-zsh
    openssl
    pciutils
    rclone
    talosctl
    telegram-desktop
    terraform
    tflint
    vim
    vscode
    yamllint
    zsh
  ];

  programs.foot.enable = true;

  programs.steam.enable = true;

  programs.zsh.enable = true;

  virtualisation.docker.enable = true;

  system.autoUpgrade.enable = true;

  system.stateVersion = "25.05";
}
