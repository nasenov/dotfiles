{
  description = "nasenov's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    nixos-hardware.url = "github:nixos/nixos-hardware?ref=master";
    nixos-hardware.inputs.nixpkgs.follows = "nixpkgs";

    import-tree.url = "github:denful/import-tree";
  };

  outputs =
    {
      import-tree,
      nixpkgs,
      nixos-hardware,
      ...
    }:
    {
      nixosConfigurations = {
        desktop = nixpkgs.lib.nixosSystem {
          modules = [
            (import-tree ./modules)
            ./hosts/desktop/configuration.nix
          ];
        };
        laptop = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit nixos-hardware; };
          modules = [
            (import-tree ./modules)
            ./hosts/laptop/configuration.nix
          ];
        };
      };
    };
}
