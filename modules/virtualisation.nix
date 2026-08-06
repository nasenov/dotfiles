{ ... }:
{
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };

  users.users.nasenov.linger = true;
}
