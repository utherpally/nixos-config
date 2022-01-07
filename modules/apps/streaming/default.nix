{ pkgs, ... }:

{
  home-manager.users.utherpally = {
    programs.obs-studio = {
      enable = true;
      package = pkgs.obs-studio;
    };
  };
}
