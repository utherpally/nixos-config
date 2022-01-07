{ pkgs, ... }:

{
  home-manager.users.utherpally = {
    home.packages = with pkgs; [
      vlc
      mpv
    ];
  };
}