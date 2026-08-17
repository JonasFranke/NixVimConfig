_: {
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
