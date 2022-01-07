{ pkgs, ... }:

{
  users = {
    users = {
      utherpally = {
        isNormalUser = true;
        description = "Uther Pally";
        createHome = true;
        initialPassword = "whatever";
        shell = pkgs.zsh;
        home = "/home/utherpally";
        extraGroups = [ "wheel" "networkmanager" "docker" ]; # Enable ‘sudo’ for the user.
      };
    };
  };
}