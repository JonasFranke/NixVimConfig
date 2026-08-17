_: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lsp_fallback = true;
        timeout_ms = 500;
      };
      formatters_by_ft = {
        javascript = [ "biome" ];
        typescript = [ "biome" ];
        javascriptreact = [ "biome" ];
        typescriptreact = [ "biome" ];
        json = [ "biome" ];
        jsonc = [ "biome" ];
        css = [ "biome" ];
        python = [ "ruff_format" ];
      };
    };
  };
}
