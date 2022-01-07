{ inputs, ... }: 
{
  imports = with inputs.self.nixosModules; [
    ./desktop.nix
    
    x11
    "workspace.i3"
  ];
}