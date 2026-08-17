_: {
  plugins.treesitter = {
    enable = true;
    settings = {
      ensureInstalled = [
        "python"
        "nix"
        "lua"
        "bash"
        "markdown"
        "yaml"
        "json"
        "html"
        "css"
        "javascript"
        "typescript"
        "tsx"
        "java"
      ];
      highlight.enable = true;
      indent.enable = true;
    };
  };
}
