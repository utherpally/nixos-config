{ pkgs, ... }:

{
  home-manager.users.utherpally = {
    home.file = {
      "autorandr" = {
        source = ./autorandr;
        target = ".config/autorandr";
      };
    };
  };
}
