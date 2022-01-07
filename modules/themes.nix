{ config, lib, pkgs, inputs, ... }:
with lib;
let
  colorType =
    types.addCheck types.str (x: !isNull (builtins.match "[0-9a-fA-F]{6}" x));
  color = mkOption { type = colorType; };

  font = {
    family = mkOption { type = types.str; };
    size = mkOption { type = types.int; };
  };

  fromYAML = yaml:
    builtins.fromJSON (builtins.readFile (pkgs.stdenv.mkDerivation {
      name = "fromYAML";
      phases = [ "buildPhase" ];
      buildPhase = "echo '${yaml}' | ${pkgs.yaml2json}/bin/yaml2json > $out";
    }));
in {
  options = {
    themes = {
      colors = builtins.listToAttrs (map (name: {
        inherit name;
        value = color;
      }) [
        "base00"
        "base01"
        "base02"
        "base03"
        "base04"
        "base05"
        "base06"
        "base07"
        "base08"
        "base09"
        "base0A"
        "base0B"
        "base0C"
        "base0D"
        "base0E"
        "base0F"
      ]);
      fonts = {
        main = font;
        serif = font;
        mono = font;
      };
    };
  };

  config = {
    themes.colors = {
      # H = 0, S = 0%
      # color: #000000
      base00 = "000000"; # L = 0%
      # color: #333333
      base01 = "333333"; # L = 20%
      # color: #666666
      base02 = "666666"; # L = 40%
      # color: #999999
      base03 = "999999"; # L = 60%
      # color: #cccccc
      base04 = "cccccc"; # L = 80%
      # color: #ffffff
      base05 = "ffffff"; # L = 100%
      # color: #e6e6e6
      base06 = "e6e6e6"; # L = 90%
      # color: #e6e6e6
      base07 = "e6e6e6"; # L = 90%
      # L = 50%, S = 50%
      # color: #bf4040
      base08 = "bf4040"; # H = 0    RED
      # color: #bf8040
      base09 = "bf8040"; # H = 30   ORANGE
      # color: #bfbf40
      base0A = "bfbf40"; # H = 60   YELLOW-ish
      # color: #80bf40
      base0B = "80bf40"; # H = 90   GREEN
      # Whoa, a lot of hues are green!
      # color: #40bfbf
      base0C = "40bfbf"; # H = 180  TEAL
      # color: #407fbf
      base0D = "407fbf"; # H = 210  BLUE
      # color: #7f40bf
      base0E = "7f40bf"; # H = 270  PURPLE
      # color: #bf40bf
      base0F = "bf40bf"; # H = 300  MAGENTA
    };
  };
}
