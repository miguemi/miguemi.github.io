{
  description = "Static website miguemi.github.io with PHP and Symfony support";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);
    in
    {
      devShells = forAllSystems (
        system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          default = pkgs.mkShell {
            buildInputs = [
              pkgs.php83 # PHP 8.3
              pkgs.php83Packages.composer # Composer
              pkgs.nodejs # Node.js (optional)
              pkgs.symfony-cli # Symfony CLI
            ];

            shellHook = ''
              echo "🚀 PHP + Symfony environment ready!"
              echo ""
              echo "Common commands:"
              echo "  symfony new . --webapp"
              echo "  symfony serve -d"
              echo ""
              echo "Note: your directory must be empty before creating a new Symfony project."
            '';
          };
        }
      );
    };
}
