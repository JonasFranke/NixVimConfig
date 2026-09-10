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

  # cmake-tools: build, run, test, debug cmake projects from inside Neovim
  plugins.cmake-tools = {
    enable = true;
    settings = {
      # Use gcc toolchain by default; override per-project via cmake presets
      cmake_generate_options = {
        "-DCMAKE_EXPORT_COMPILE_COMMANDS" = 1;
        "-DCMAKE_C_COMPILER" = "gcc";
        "-DCMAKE_CXX_COMPILER" = "g++";
      };
      # Build artefacts go to out/<Debug|Release|…> — keeps the project root clean
      cmake_build_directory = "out/\${variant:buildType}";
      # Auto-symlink compile_commands.json → project root so clangd picks it up
      cmake_soft_link_compile_commands = true;
      # Regenerate on every CMakeLists.txt save
      cmake_regenerate_on_save = true;
      # Show the build output in a split terminal
      cmake_terminal_opts = {
        name = "CMake";
        prefix_name = "[CMake] ";
        split_direction = "horizontal";
        split_size = 11;
        float_opts = {
          border = "rounded";
        };
      };
      # Quickfix list for errors
      cmake_show_quickfix = true;
    };
  };
}
