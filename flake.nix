{
  description = "Miguemi profile";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachSystem
      [
        "x86_64-darwin"
        "aarch64-darwin"
        "x86_64-linux"
        "aarch64-linux"
      ]
      (
        system:
        let
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };

          mkScript = name: text: pkgs.writeShellScriptBin name text;

          scripts = [
            # 🧩 Iniciar el servidor Symfony local
            (mkScript "symfony-start" ''
              echo "🚀 Iniciando servidor Symfony..."
              if [ -f bin/console ]; then
                php -S 127.0.0.1:8000 -t public &
                symfony serve --no-tls || true
              else
                echo "⚠️ No se encontró bin/console — asegúrate de estar en un proyecto Symfony."
              fi
            '')
          ];

          phpWithExtensions = pkgs.php84.buildEnv {
            extensions = (
              { enabled, all }:
              enabled
              ++ (with all; [
                intl
                bcmath
                curl
                zip
                mbstring
                gd
                xdebug
              ])
            );
            extraConfig = ''
              memory_limit=1G
              xdebug.mode=debug
              xdebug.start_with_request=yes
              xdebug.client_host=127.0.0.1
              xdebug.client_port=9003
              xdebug.log_level=0
            '';
          };

          devPackages = with pkgs; [
            phpWithExtensions
            php84Packages.composer
            nodejs_22
            pnpm
            curl
            zip
            unzip
            symfony-cli
            vscode-extensions.xdebug.php-debug
          ];
        in
        {
          devShells.default = pkgs.mkShell {
            name = "symfony-dev-env";
            packages = devPackages ++ scripts;
            shellHook = ''
              echo "Comandos útiles:"
              echo "  • symfony-start  → inicia el servidor de Symfony"
            '';
          };
        }
      );
}
