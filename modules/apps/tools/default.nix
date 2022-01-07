{ pkgs, ... }:

{
  imports = [
    ./base.nix
    ./compression.nix
    ./http.nix
    ./websocket.nix
    ./json.nix
    ./disk.nix
    ./network.nix
  ];
}
