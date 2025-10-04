{
  description = "Sitio estático miguemi.github.io con Nix Flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      packages.${system}.default = pkgs.stdenv.mkDerivation {
        pname = "miguemi-github-io";
        version = "1.0.0";

        src = ./.;

        installPhase = ''
          mkdir -p $out
          cp -r * $out/
        '';
      };

      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.nodejs
          pkgs.python3
          pkgs.serve # servidor estático (npx serve ./)
        ];

        shellHook = ''
          echo "Para probar tu sitio:"
          echo "  npx serve .   # o"
          echo "  python3 -m http.server 8000"
        '';
      };
    };
}
