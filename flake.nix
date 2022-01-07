{
  description = "NixOS configuration with flakes";
  
  inputs = {
    home-manager.url = "github:nix-community/home-manager";

    nixos-hardware = {
      type = "github";
      owner = "NixOS";
      repo = "nixos-hardware";
      flake = false;
    };

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixpkgs-21-11 = {
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
      ref = "nixos-21.11";
      flake = false;
    };

  };
  
  outputs = { nixpkgs, nix, self, ... }@inputs:  {
    nixosModules = import ./modules;
    nixosProfiles = import ./profiles;

    nixosConfigurations = with nixpkgs.lib;
      let
        hosts = builtins.attrNames (builtins.readDir ./hosts);
        mkHost = name:
            nixosSystem {
              system = removeSuffix "\n" (builtins.readFile (./hosts + "/${name}/system"));
              modules = [(import (./hosts + "/${name}"))];
              specialArgs = { inherit inputs; };
            };
      in genAttrs hosts mkHost;

    legacyPackages.x86_64-linux =
      (builtins.head (builtins.attrValues self.nixosConfigurations)).pkgs;

    
  };

}