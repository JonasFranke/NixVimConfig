_: {
  plugins.neo-tree = {
    enable = true;
    settings = {
      filesystem = {
        bind_to_cwd = false;
        follow_current_file.enabled = true;
      };
    };
  };
}
