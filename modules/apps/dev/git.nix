{ inputs, pkgs, ... }:

{
  home-manager.users.utherpally = {
    programs.git = {
      enable = true;
      userName  = "Uther Pally";
      userEmail = "utherpally@protonmail.com";
      # Enable delta syntax highlighter
      delta.enable = true;
    };

    home.packages = with pkgs; [ delta ];
  };
}