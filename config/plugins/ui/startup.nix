_: {
  plugins.startup = {
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
            " Find File"
            "FzfLua files"
            "ff"
          ]
          [
            " Live Grep"
            "FzfLua live_grep"
            "fg"
          ]
          [
            " File Browser"
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
}
