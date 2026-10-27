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
        "markdown_inline"
        "regex"
        "vim"
        "vimdoc"
        "yaml"
        "json"
        "html"
        "css"
        "javascript"
        "typescript"
        "tsx"
        "java"
        "haskell"
      ];
      highlight.enable = true;
      indent.enable = true;
    };
  };
}
