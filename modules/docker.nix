{ ... }:
{
  virtualisation.docker.enable = true;

  users.users.nasenov.extraGroups = [ "docker" ];
}
