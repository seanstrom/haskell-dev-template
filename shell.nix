let
  project = import ./default.nix;
  sources = import ./nix/sources.nix;
  haskellNix = import sources.haskellNix {};
  pkgs = import
    haskellNix.sources.nixpkgs-unstable
    haskellNix.nixpkgsArgs;
in
  project.shellFor {
    buildInputs = [ pkgs.niv ];
    tools = {
      cabal = "3.6.0.0";
    };
  }
