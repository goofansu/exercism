{
  description = "A simple environment for Exercism exercises";
  inputs.nixpkgs.url = "github:nixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = with pkgs;
          mkShell { packages = [ exercism elixir ruby ]; };
      });
}
