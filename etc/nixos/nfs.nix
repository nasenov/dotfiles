{ config, pkgs, ... }:

{
  boot.supportedFilesystems = [ "nfs" ];

  fileSystems."/mnt/tank/media" = {
    device = "192.168.0.15:/mnt/tank/media";
    fsType = "nfs";
    options = [
      "_netdev"
      "noatime"
      "x-systemd.automount"
      "x-systemd.idle-timeout=600"
    ];
  };
}
