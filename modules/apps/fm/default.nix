
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ranger
    # An alternative for w3mimgdisplay
    python39Packages.ueberzug
  ];

  home-manager.users.utherpally = {
    programs = {
      
      broot = {
        enable = true;
      };

      direnv = {
        enable = true;
        enableFishIntegration = true;
        nix-direnv.enable = true;
      };
    };
  };
}