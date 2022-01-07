{ inputs, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
  ];
  home-manager.users.utherpally = {
    programs.neovim = {
      enable = true;
      vimAlias = true;
      viAlias = true;
      vimdiffAlias = true;
      withNodeJs = true;
    };

    home.packages = with pkgs; [
      python39Packages.pynvim
    ];
  };
}