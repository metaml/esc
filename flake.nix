{
  description = "elastic search client";

  inputs.nixpkgs.url       = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url   = "github:numtide/flake-utils";

  inputs.flake-compat = {
    url   = "github:edolstra/flake-compat";
    flake = false;
  };

  outputs = { self, nixpkgs, flake-compat, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkg-name = "esc";
        pkgs = nixpkgs.legacyPackages.${system};
        haskell-pkgs = pkgs.haskell.packages.ghc922;

        esc = pkgs.runCommand "esc" {
          preferLocalBuild = true;
          buildInputs = [ pkg-name ];
        }
        '''';

        revision = "${self.lastModifiedDate}-${self.shortRev or "dirty"}";
        jailbreak-unbreak = pkg: pkgs.haskell.lib.doJailbreak (pkg.overrideAttrs (_: { meta = { }; }));
      in {
        defaultPackage = self.packages.${system}.${pkg-name};

        packages.${pkg-name} = haskell-pkgs.callCabal2nix pkg-name self rec {
          # add haskell packages labelled as "broken" by nix here: pkg' = jailbreak-unbreak haskell-pkgs.pkg';
        };

        devShell = pkgs.mkShell {
          buildInputs = with haskell-pkgs; [
            fsnotify
            fswatcher
            ghcid
            haskell-language-server
            hlint
            pkgs.cabal-install
            pkgs.gcc
            pkgs.gmp
            pkgs.jdk17
            pkgs.jq
            pkgs.maven
            pkgs.pcre
            pkgs.pkg-config
            pkgs.sourceHighlight
            pkgs.stdenv.cc.cc.lib
            pkgs.yq
            pkgs.zlib
          ];

          inputsFrom = builtins.attrValues self.packages.${system};

          shellHook = ''
            export LANG=en_US.UTF-8
            export PS1="nix|-$PS1"
          '';
        };
      }
    );
}
