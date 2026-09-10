{ pkgs, ... }:
let
  codelldbPath = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
in
{
  plugins = {
    # Core DAP engine
    dap = {
      enable = true;

      # Nice signs for the gutter
      signs = {
        dapBreakpoint = {
          text = "";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "◆";
          texthl = "DapLogPoint";
        };
        dapStopped = {
          text = "→";
          texthl = "DapStopped";
          linehl = "DapStoppedLine";
          numhl = "DapStoppedLine";
        };
        dapBreakpointRejected = {
          text = "";
          texthl = "DapBreakpointRejected";
        };
      };
    };

    # codelldb adapter — handles C, C++, and Rust via the LLDB backend
    dap-lldb = {
      enable = true;
      settings = {
        codelldb_path = codelldbPath;
      };
    };

    # Debug UI panels (scopes, breakpoints, stacks, watches, REPL, console)
    dap-ui = {
      enable = true;
      settings = {
        icons = {
          expanded = "";
          collapsed = "";
          current_frame = "";
        };
        controls.enabled = true;
        floating.border = "rounded";
      };
    };

    # Inline variable values while stepping
    dap-virtual-text = {
      enable = true;
      settings = {
        commented = false;
        display_callback.__raw = ''
          function(variable, _buf, _stackframe, _node, options)
            if options.virt_text_pos == "inline" then
              return " = " .. variable.value
            else
              return variable.name .. " = " .. variable.value
            end
          end
        '';
      };
    };
  };

  # Auto-open/close the DAP UI when a session starts/ends
  extraConfigLua = ''
    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.before.attach.dapui_config = function() dapui.open() end
    dap.listeners.before.launch.dapui_config = function() dapui.open() end
    dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
    dap.listeners.before.event_exited.dapui_config = function() dapui.close() end
  '';
}
