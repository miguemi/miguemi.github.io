{
  description = "Symfony + Node + TailwindCSS development environment with Nix Flakes and Direnv";

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

          # 🧰 Helper scripts
          scripts = [
            (mkScript "symfony-start" ''
              echo "🚀 Starting Symfony server..."
              if [ -f bin/console ]; then
                php -S 127.0.0.1:8000 -t public &
                symfony serve --no-tls || true
              else
                echo "⚠️ bin/console not found — make sure you are in a Symfony project."
              fi
            '')

            (mkScript "tailwind-init" ''
              echo "🎨 Initializing TailwindCSS with pnpm..."
              pnpm exec tailwindcss init -p
              echo "✅ Tailwind initialized successfully"
            '')

            (mkScript "frontend-dev" ''
              echo "🚀 Running frontend server (Vite + Tailwind)..."
              if [ -f package.json ]; then
                pnpm run dev
              else
                echo "⚠️ package.json not found — make sure you are in the frontend root."
              fi
            '')

            (mkScript "tailwind-rebuild" ''
              echo "🧹 Cleaning dependencies and reinstalling (pnpm)..."
              rm -rf node_modules pnpm-lock.yaml
              pnpm add -D tailwindcss postcss autoprefixer vite vite-plugin-symfony
              echo "✅ Dependencies reinstalled successfully"
            '')

            # 🚀 All-in-one: Symfony + Vite/Tailwind
            (mkScript "dev-all" ''
              echo "🚀 Starting Symfony + Vite (frontend + backend)..."

              symfony serve --no-tls --port=8000 &
              pnpm run dev &
            '')
          ];

          # 🐘 PHP + extensions
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

          # 📦 Development packages
          devPackages = with pkgs; [
            phpWithExtensions
            php84Packages.composer
            nodejs_22
            corepack # Enables pnpm/yarn shims
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
              echo "  • dev-all          → starts Symfony + Vite simultaneously"

              # Enable Corepack so pnpm/yarn work properly
              corepack enable >/dev/null 2>&1 || true

              # Ensure pnpm binaries (like tailwindcss) are on PATH
              export PATH="$PWD/node_modules/.bin:$PATH"
            '';
          };
        }
      );
}
