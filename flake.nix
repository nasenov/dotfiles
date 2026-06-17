{
  description = "nasenov's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixos-hardware.url = "github:nixos/nixos-hardware?ref=master";
  };

  outputs =
    { nixpkgs, nixos-hardware, ... }:
    {
      nixosConfigurations = {
        desktop = nixpkgs.lib.nixosSystem {
          modules = [
            ./hosts/desktop/configuration.nix
          ];
        };
        laptop = nixpkgs.lib.nixosSystem {
          modules = [
            ./hosts/laptop/configuration.nix
            nixos-hardware.nixosModules.lenovo-legion-16ach6h-hybrid
          ];
        };
      };
    };
}
