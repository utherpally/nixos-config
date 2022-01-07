{ inputs, ... }: {
  imports = with inputs.self.nixosModules; [
    ./base.nix

    workspace
    workspace--cursor
    workspace--gtk
    workspace--qt

    virtualisation

    apps
    apps--messaging
    apps--web
    apps--media
    apps--dev
    apps--office
    apps--reading

    apps--editor
    
    apps--shell--zsh
    apps--shell--fish
    apps--terminal--alacritty
    apps--terminal--kitty
  ];
}
