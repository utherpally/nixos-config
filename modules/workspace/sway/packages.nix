{ pkgs, inputs, ... }:

{
  home-manager.users.vyorkin.home.packages = with pkgs; [
    wl-clipboard
    grim # for screenshot
    slurp # for select region
    pass-wayland
    wf-recorder
  ];
}
