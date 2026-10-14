_: {
  plugins = {
    luasnip.enable = true;
    friendly-snippets.enable = true;

    cmp-latex-symbols.enable = true;
    cmp-vimtex.enable = true;
    cmp-cmdline.enable = true;
    cmp-spell.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;

      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          { name = "path"; }
          { name = "spell"; }
          { name = "buffer"; }
          { name = "vimtex"; }
          { name = "latex_symbols"; }
          { name = "calc"; }
        ];

        cmdline = {
          "/" = {
            mapping = {
              __raw = "cmp.mapping.preset.cmdline()";
            };
            sources = [ { name = "buffer"; } ];
          };
          ":" = {
            mapping = {
              __raw = "cmp.mapping.preset.cmdline()";
            };
            sources = [
              { name = "path"; }
              { name = "cmdline"; }
            ];
          };
        };

        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<C-e>" = "cmp.mapping.abort()";
        };
      };
    };
  };
}
