{ pkgs, ... }:

{
  home-manager.users.utherpally = {
    programs.emacs = {
      enable = true;
    };
  };
} 