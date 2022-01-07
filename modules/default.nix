builtins.listToAttrs (builtins.map (path: {
  name = builtins.head (let

    cwd = builtins.toString (./. + "/");
    prefix = cwd + "/";
    spath = builtins.toString path;
    b = builtins.replaceStrings [prefix "./" "/"] ["" "" "--"] spath;
    m = builtins.match "(.*)\\.nix" b;
  in if isNull m then [ "${b}" ] else m);
  value = import path;
})[
  # Default imports
  ./hardware
  ./boot
  ./system.nix
  ./network.nix
  ./nixpkgs.nix
  ./services.nix
  ./locale.nix
  ./virtualisation.nix
  ./home.nix
  ./nix.nix
  ./users
  ./themes.nix

  ./apps
  ./apps/dev
  ./apps/dev/git.nix
  ./apps/editor
  ./apps/editor/vscode.nix
  ./apps/editor/vim.nix
  ./apps/editor/emacs.nix
  ./apps/media
  
  ./apps/messaging
  
  ./apps/web
  ./apps/web/firefox.nix
  ./apps/web/google-chrome.nix

  ./apps/office
  
  ./apps/shell/zsh.nix
  ./apps/shell/fish.nix

  ./apps/terminal
  ./apps/terminal/alacritty.nix
  ./apps/terminal/kitty.nix
  ./apps/terminal/tmux.nix

  ./apps/fm
  
  ./apps/tools
  
  ./apps/monitoring
  
  ./apps/reading

  ./apps/streaming

  ./x11

  ./workspace/cursor.nix
  ./workspace/gtk.nix
  ./workspace/qt.nix
  ./workspace/gnome
  ./workspace/i3
  ./workspace/sway
  ./workspace
  ])
