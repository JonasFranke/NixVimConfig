{ pkgs, ... }:
{
  imports = [
    ./plugins.nix
    ./keymaps.nix
  ];

  nixpkgs.config.allowUnfree = true;

  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  colorschemes.tokyonight.enable = true;

  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 2;
    tabstop = 2;
    expandtab = true;
  };

  extraPackages = with pkgs; [
    git
    fzf
    ripgrep
    jdt-language-server
    vscode-extensions.vscjava.vscode-java-debug
    vscode-extensions.vscjava.vscode-java-test
    ruff
    biome
  ];

  autoGroups = {
    highlight_yank = { };
    vim_enter = { };
    indentscope = { };
    restore_cursor = { };
  };

  autoCmd = [
    {
      group = "highlight_yank";
      event = [ "TextYankPost" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      };
    }
  ];
}
