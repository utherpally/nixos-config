{ inputs, ... }: {
  imports = with inputs.self.nixosModules; [
    inputs.home-manager.nixosModules.home-manager

    hardware
    boot
    system
    network
    nix
    nixpkgs
    services
    locale
    home
    users
    #"keyboard-layout.us-de"

    "apps.monitoring"
    "apps.fm"
    "apps.tools"

    "apps.dev.git"
  ];
}