{ inputs, ... }:

{
  imports = [
    "${inputs.nixos-hardware}/lenovo/thinkpad/t14/amd/gen1"
    "${inputs.nixpkgs}/nixos/modules/installer/scan/not-detected.nix"

    ./boot.nix
    ./fs.nix
    ./power.nix
  ];
}