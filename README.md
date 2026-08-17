# JonasFranke's NixVim Config

A standalone [NixVim](https://github.com/nix-community/nixvim) configuration, packaged as a Nix flake.

## Usage

### Run directly (no install required)

```bash
nix run github:JonasFranke/NixVimConfig
```

### Install to your Nix profile

```bash
nix profile install github:JonasFranke/NixVimConfig
```

### Use in a NixOS system flake

```nix
# flake.nix
inputs.nixvim-config.url = "github:JonasFranke/NixVimConfig";

# configuration.nix
environment.systemPackages = [
  inputs.nixvim-config.packages.${pkgs.system}.default
];
```

### Use in Home Manager

```nix
# flake.nix
inputs.nixvim-config.url = "github:JonasFranke/NixVimConfig";

# home.nix
home.packages = [
  inputs.nixvim-config.packages.${pkgs.system}.default
];
```

## Structure

```
config/
├── default.nix          # Entry point — imports all modules
├── settings.nix         # Vim options, globals, clipboard, extra packages
├── keymaps.nix          # Key bindings
├── auto_cmds.nix        # Autocommands
└── plugins/
    ├── themes/          # Colorscheme (Tokyo Night)
    ├── cmp/             # Completion (nvim-cmp, luasnip, snippets)
    ├── editor/          # Editor plugins (neo-tree, treesitter, undotree, …)
    ├── git/             # Git integration (gitsigns)
    ├── langs/           # Language-specific (nix, typescript-tools, vimtex)
    ├── lsp/             # LSP servers, conform.nvim formatting, diagnostics
    ├── ui/              # UI (lualine, notify, startup, which-key)
    └── utils/           # Utilities (fzf-lua, comment, quickmath, lightbulb)
```

## Credits

The modular directory structure and flake organisation of this configuration
is heavily inspired by **[dc-tec/nixvim](https://github.com/dc-tec/nixvim)**
by [dc-tec](https://github.com/dc-tec). Many thanks for sharing a clean
and well-organised NixVim setup to learn from.
