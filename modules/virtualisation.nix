{ ... }:
{
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };

  virtualisation.libvirtd = {
    enable = true;

    qemu = {
      swtpm.enable = true;
    };
  };

  programs.virt-manager.enable = true;

  users.users.nasenov = {
    linger = true;
    extraGroups = [ "libvirtd" ];
  };
}
