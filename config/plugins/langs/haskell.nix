_: {
  # Haskell-specific extras on top of LSP/conform/treesitter
  plugins.haskell-tools = {
    enable = true;
    settings = {
      hls = {
        cmd = [
          "haskell-language-server"
          "--lsp"
        ];
      };
    };
  };
}
