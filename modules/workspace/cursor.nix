{ pkgs, lib, ... }: 
{

  environment.sessionVariables = {
    XCURSOR_PATH = lib.mkForce "/home/utherpally/.icons";
  };

  home-manager.users.utherpally = {
    xsession.pointerCursor = {
      package = pkgs.breeze-qt5;
      name = "Breeze";
    };
  };
}
