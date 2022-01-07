{
  home-manager.users.utherpally = {
    programs.fish = {
      enable = true;
    };

    # Enable fish integration for broot.
    # See: https://github.com/Canop/broot
    programs.broot.enableFishIntegration = true;
  };
}