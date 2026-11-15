_: {
  plugins = {
    schemastore = {
      enable = true;
      json.enable = true;
      yaml.enable = true;
    };

    lsp = {
      enable = true;
      inlayHints = true;
      keymaps = {
        silent = true;
        lspBuf = {
          gd = "definition";
          gD = "declaration";
        };
      };
      servers = {
        # Web & Markdown
        biome = {
          enable = true;
          packageFallback = true;
          filetypes = [
            "javascript"
            "javascriptreact"
            "typescript"
            "typescriptreact"
            "json"
            "jsonc"
            "css"
            "graphql"
            "markdown"
          ];
        };
        jsonls.enable = true;
        html.enable = true;
        # CSS modules support for Next.js
        cssls.enable = true;
        tailwindcss.enable = true;
        # Emmet for rapid React/JSX writing
        emmet_ls = {
          enable = true;
          filetypes = [
            "html"
            "css"
            "javascriptreact"
            "typescriptreact"
          ];
        };
        # Infra / DevOps
        docker_language_server.enable = true;
        # Nix - full nixpkgs-aware completions (pkgs.*, lib.*, stdenv.mkDerivation attrs, etc.)
        nixd = {
          enable = true;
          settings = {
            nixpkgs = {
              # Evaluates nixpkgs so nixd can resolve completions from the real package tree
              expr = "import <nixpkgs> {}";
            };
            formatting = {
              command = [ "nixfmt" ];
            };
          };
        };
        # C/C++ — clangd for source files, neocmake for CMakeLists.txt
        clangd = {
          enable = true;
          # Override the launch command to pass flags directly to clangd.
          # --query-driver: lets clangd interrogate gcc/g++ for their built-in
          #   include paths. Required when using gcc (not clang) as the compiler,
          #   otherwise clangd can't resolve system headers and Qt6 headers.
          # --compile-commands-dir: tells clangd where to find compile_commands.json
          #   (cmake-tools symlinks it to the project root, but this is a fallback).
          cmd = [
            "clangd"
            "--query-driver=/run/current-system/sw/bin/g++,/run/current-system/sw/bin/gcc,**/bin/g++,**/bin/gcc"
            "--background-index"
            "--clang-tidy"
            "--completion-style=detailed"
            "--header-insertion=iwyu"
            "--compile-commands-dir=build"
          ];
        };
        neocmake.enable = true;
        # Editor tooling
        lua_ls.enable = true;
        marksman.enable = true;
        # Python
        pyright.enable = true;
        # YAML with schema support
        yamlls.enable = true;
        harper_ls.enable = true;
        sqls.enable = true;
      };
    };
  };
}
