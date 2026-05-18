{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/crypto.nix
    ../../modules/docker.nix
    ../../modules/gaming.nix
    ../../modules/nix.nix
  ];

  hardware.enableAllFirmware = true;

  boot.plymouth.enable = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.editor = false;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "desktop";

  # Set your time zone.
  time.timeZone = "Europe/Sofia";

  # Select internationalisation properties.
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

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  users.defaultUserShell = pkgs.zsh;

  # Define a user account. Don't forget to set a password with ‘passwd’.
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
    fluxcd
    foot
    foot.terminfo
    foot.themes
    git
    go
    go-task
    google-chrome
    helmfile
    inetutils
    jdk
    jetbrains.idea
    jq
    krew
    kubectl
    kubernetes-helm
    libreoffice
    mise
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
    yq-go
    zsh
  ];

  programs.foot.enable = true;

  programs.zsh.enable = true;

  system.autoUpgrade.enable = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "25.11";
}
