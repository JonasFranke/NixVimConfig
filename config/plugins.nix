{
  plugins = {
    fzf-lua = {
      enable = true;
      keymaps = {
        "<leader>ff" = "files";
        "<leader>fg" = "live_grep";
        "<leader>fb" = "buffers";
        "<leader>fh" = "helptags";
      };
    };

    treesitter = {
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

    # Added: Automatically close and rename JSX/TSX tags
    ts-autotag = {
      enable = true;
    };

    teamtype = {
      enable = true;
    };

    nvim-lightbulb = {
      enable = true;
    };

    jdtls = {
      enable = true;
    };

    comment = {
      enable = true;
    };

    undotree = {
      enable = true;
      settings = {
        autoOpenDiff = true;
        focusOnToggle = true;
      };
    };

    todo-comments = {
      enable = true;
      settings = {
        colors = {
          error = [
            "DiagnosticError"
            "ErrorMsg"
            "#ED8796"
          ];
          warning = [
            "DiagnosticWarn"
            "WarningMsg"
            "#EED49F"
          ];
          info = [
            "DiagnosticInfo"
            "#EED49F"
          ];
          default = [
            "Identifier"
            "#F5A97F"
          ];
          test = [
            "Identifier"
            "#8AADF4"
          ];
        };
      };
    };

    vimtex.enable = true;
    cmp-latex-symbols.enable = true;
    cmp-vimtex.enable = true;
    cmp-cmdline.enable = true;
    cmp-spell.enable = true;
    friendly-snippets.enable = true;

    nix = {
      enable = true;
    };

    quickmath = {
      enable = true;
    };

    typescript-tools = {
      enable = true;
    };

    which-key = {
      enable = true;
      settings = {
        preset = "modern";
        delay = 100;
        win = {
          border = "rounded";
          padding = [
            1
            2
          ];
        };
        layout = {
          align = "right";
        };
      };
    };

    lualine = {
      enable = true;
      settings = {
        options = {
          globalstatus = true;
          extensions = [
            "fzf"
            "neo-tree"
          ];
          disabledFiletypes = {
            statusline = [
              "startup"
              "alpha"
            ];
          };
        };
      };
    };

    neo-tree = {
      enable = true;
      settings = {
        filesystem = {
          bind_to_cwd = false;
          follow_current_file.enabled = true;
        };
      };
    };

    notify = {
      enable = true;
      settings = {
        background_colour = "#000000";
        fps = 60;
        icons = {
          debug = "";
          error = "";
          info = "";
          trace = "✎";
          warn = "";
        };
        level = "info";
        max_height = 10;
        max_width = 80;
        minimum_width = 50;
        on_close = {
          __raw = "function() print('Window closed') end";
        };
        on_open = {
          __raw = "function() print('Window opened') end";
        };
        render = "default";
        stages = "fade_in_slide_out";
        timeout = 5000;
        top_down = true;
      };
    };

    conform-nvim = {
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

    luasnip.enable = true;

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

    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        biome.enable = true;
        docker_language_server.enable = true;
        html.enable = true;
        lua_ls.enable = true;
        tailwindcss.enable = true;
        marksman.enable = true;
        pyright.enable = true;

        # Added: CSS modules support for Next.js
        cssls.enable = true;

        # Added: Emmet for rapid React/JSX writing
        emmet_ls = {
          enable = true;
          filetypes = [
            "html"
            "css"
            "javascriptreact"
            "typescriptreact"
          ];
        };

        yamlls = {
          enable = true;
          extraOptions = {
            settings = {
              yaml = {
                schemas = {
                  "http://json.schemastore.org/github-workflow" = ".github/workflows/*";
                  "http://json.schemastore.org/github-action" = ".github/action.{yml,yaml}";
                  "https://json.schemastore.org/dependabot-v2" = ".github/dependabot.{yml,yaml}";
                  "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json" =
                    "*docker-compose*.{yml,yaml}";
                };
              };
            };
          };
        };
      };
    };

    gitsigns = {
      enable = true;
      settings.signs = {
        add.text = "┃";
        change.text = "┃";
        delete.text = "_";
        topdelete.text = "‾";
        changedelete.text = "~";
        untracked.text = "┆";
      };
    };

    startup = {
      enable = true;
      settings = {
        colors = {
          background = "#ffffff";
          folded_section = "#ffffff";
        };

        header = {
          type = "text";
          oldfiles_directory = false;
          align = "center";
          fold_section = false;
          title = "Header";
          margin = 5;
          content = [
            "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
            "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║"
            "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║"
            "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
            "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
            "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝    ╚═╝"
          ];
          highlight = "Statement";
          default_color = "";
          oldfiles_amount = 0;
        };

        body = {
          type = "mapping";
          oldfiles_directory = false;
          align = "center";
          fold_section = false;
          title = "Menu";
          margin = 5;
          content = [
            [
              " Find File"
              "FzfLua files"
              "ff"
            ]
            [
              " Recent Files"
              "FzfLua live_grep"
              "fg"
            ]
            [
              " File Browser"
              "Neotree"
              "e"
            ]
          ];
          highlight = "string";
          default_color = "";
          oldfiles_amount = 0;
        };

        options = {
          paddings = [
            1
            3
          ];
        };

        parts = [
          "header"
          "body"
        ];
      };
    };

  };

  diagnostic = {
    settings = {
      underline = true;
      update_in_insert = false;
      severity_sort = true;

      virtual_text = {
        spacing = 4;
        source = "if_many";
        prefix = "●";
      };

      float = {
        border = "rounded";
        source = "if_many";
      };

      signs = {
        text = {
          __raw = ''
            {
              [vim.diagnostic.severity.ERROR] = " ",
              [vim.diagnostic.severity.WARN]  = " ",
              [vim.diagnostic.severity.HINT]  = " ",
              [vim.diagnostic.severity.INFO]  = " ",
            }
          '';
        };
      };
    };
  };
}
