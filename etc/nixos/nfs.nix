{ config, pkgs, ... }:

{
  boot.supportedFilesystems = [ "nfs" ];

  fileSystems."/mnt/tank/media" = {
    device = "truenas.nasenov.dev:/mnt/tank/media";
    fsType = "nfs";
    options = [
      "_netdev"
      "noatime"
      "x-systemd.automount"
      "x-systemd.idle-timeout=600"
    ];
  };
}
