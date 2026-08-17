_: {
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      # Web
      biome.enable = true;
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
      # Editor tooling
      lua_ls.enable = true;
      marksman.enable = true;
      # Python
      pyright.enable = true;
      # YAML with schema support
      yamlls = {
        enable = true;
        extraOptions = {
          settings = {
            yaml = {
              schemas = {
                "http://json.schemastore.org/github-workflow" = ".github/workflows/*";
                "http://json.schemastore.org/github-action" = ".github/action.{yml,yaml}";
                "https://json.schemastore.org/dependabot-v2" = ".github/dependabot.{yml,yaml}";
                "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json" =
                  "*docker-compose*.{yml,yaml}";
              };
            };
          };
        };
      };
    };
  };
}
