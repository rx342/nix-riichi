{
  system ? builtins.currentSystem,
  source ? import ./npins,
  pkgs ? import source.nixpkgs {
    overlay = [ ];
    config = { };
    inherit system;
  },
  openriichi ? source.openriichi.outPath,
}:

pkgs.callPackage ./open-riichi.nix { inherit openriichi; }
