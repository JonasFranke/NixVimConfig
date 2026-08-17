_: {
  imports = [
    # General configuration
    ./settings.nix
    ./keymaps.nix
    ./auto_cmds.nix

    # Colorscheme
    ./plugins/themes/tokyonight.nix

    # Completion
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/luasnip.nix

    # Editor
    ./plugins/editor/neo-tree.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/undotree.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/ts-autotag.nix

    # Git
    ./plugins/git/gitsigns.nix

    # LSP
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/conform.nix
    ./plugins/lsp/diagnostic.nix
    ./plugins/lsp/jdtls.nix

    # UI
    ./plugins/ui/lualine.nix
    ./plugins/ui/notify.nix
    ./plugins/ui/startup.nix
    ./plugins/ui/which-key.nix

    # Utils
    ./plugins/utils/fzf-lua.nix
    ./plugins/utils/comment.nix
    ./plugins/utils/quickmath.nix
    ./plugins/utils/lightbulb.nix

    # Languages
    ./plugins/langs/nix.nix
    ./plugins/langs/typescript.nix
    ./plugins/langs/vimtex.nix
  ];
}
