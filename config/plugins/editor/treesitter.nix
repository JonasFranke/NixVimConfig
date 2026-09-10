_: {
  plugins.treesitter = {
    enable = true;
    highlight.disable = [ "latex" ];
    settings = {
      ensureInstalled = [
        "python"
        "c"
        "cpp"
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
