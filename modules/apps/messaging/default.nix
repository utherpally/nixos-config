{ pkgs, ... }:

{
  home-manager.users.utherpally = {
    home.packages = with pkgs; [
      slack
      discord
      element-desktop

      tdesktop
    ];
  };
}