{ pkgs, ... }:
{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = pkgs.stdenv.isLinux;
  };

  opts = {
    # Line numbers
    number = true;
    relativenumber = true;

    # Indentation
    shiftwidth = 2;
    tabstop = 2;
    softtabstop = 2;
    expandtab = true;
    smartindent = true;

    # Search
    ignorecase = true;
    smartcase = true;

    # UI
    cursorline = true;
    termguicolors = true;
    signcolumn = "yes";
    scrolloff = 8;
    sidescrolloff = 8;
    wrap = false;

    # Files
    undofile = true;
    swapfile = false;
    backup = false;

    # Splits
    splitright = true;
    splitbelow = true;
  };

  extraPackages = with pkgs; [
    git
    fzf
    ripgrep
    # Java
    jdt-language-server
    vscode-extensions.vscjava.vscode-java-debug
    vscode-extensions.vscjava.vscode-java-test
    # Python
    ruff
    # Web
    biome
  ];
}
