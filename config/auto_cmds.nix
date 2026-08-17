_: {
  autoGroups = {
    highlight_yank = { };
    vim_enter = { };
    indentscope = { };
    restore_cursor = { };
  };

  autoCmd = [
    # Highlight yanked text briefly
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
