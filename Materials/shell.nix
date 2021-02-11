{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {}
}:     # import the sources

with pkgs;

mkShell {
  buildInputs = [ (haskellPackages.ghcWithPackages (ps: with ps; [
    haskell-language-server cabal-install ghcid brittany hpack
  ])) ];
}
