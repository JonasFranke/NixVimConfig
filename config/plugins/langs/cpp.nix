_: {
  # clangd-extensions: inlay hints, AST view, memory usage, type hierarchy
  plugins.clangd-extensions = {
    enable = true;
    enableOffsetEncodingWorkaround = true;
    settings = {
      inlay_hints = {
        inline = true;
        only_current_line = false;
        show_parameter_hints = true;
        parameter_hints_prefix = " ";
        other_hints_prefix = " ";
      };
      ast = {
        role_icons = {
          type = "";
          declaration = "";
          expression = "";
          specifier = "";
          statement = "";
          "template argument" = "";
        };
        kind_icons = {
          compound = "";
          recovery = "";
          translation_unit = "";
          pack_expansion = "";
          template_type_parm = "";
          template_template_parm = "";
          template_param_object = "";
        };
      };
    };
  };
}
