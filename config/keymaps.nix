_: {
  keymaps = [
    # File explorer
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        silent = true;
        desc = "Toggle Neo-tree";
      };
    }
    # Window navigation
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        desc = "Navigate to left window";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        desc = "Navigate to lower window";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        desc = "Navigate to upper window";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        desc = "Navigate to right window";
        silent = true;
      };
    }
    # Quickmath
    {
      mode = "n";
      key = "<leader>m";
      action = "<cmd>Quickmath<cr>";
      options = {
        silent = true;
        desc = "Invoke Quickmath";
      };
    }
    # Undotree
    {
      mode = "n";
      key = "<leader>ut";
      action = "<cmd>UndotreeToggle<CR>";
      options = {
        silent = true;
        desc = "Undotree";
      };
    }
    # GitBlame
    {
      mode = "n";
      key = "<leader>g";
      action = "<cmd>GitBlameToggle<CR>";
      options = {
        silent = true;
        desc = "GitBlame";
      };
    }
    # Bufferline tab navigation
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        silent = true;
        desc = "Previous buffer tab";
      };
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        silent = true;
        desc = "Next buffer tab";
      };
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = {
        silent = true;
        desc = "Close buffer";
      };
    }
    # Debugger (DAP)
    {
      mode = "n";
      key = "<leader>dc";
      action = "<cmd>lua require('dap').continue()<cr>";
      options = {
        silent = true;
        desc = "DAP Continue";
      };
    }
    {
      mode = "n";
      key = "<leader>dsi";
      action = "<cmd>lua require('dap').step_into()<cr>";
      options = {
        silent = true;
        desc = "DAP Step Into";
      };
    }
    {
      mode = "n";
      key = "<leader>dso";
      action = "<cmd>lua require('dap').step_over()<cr>";
      options = {
        silent = true;
        desc = "DAP Step Over";
      };
    }
    {
      mode = "n";
      key = "<leader>dsu";
      action = "<cmd>lua require('dap').step_out()<cr>";
      options = {
        silent = true;
        desc = "DAP Step Out";
      };
    }
    {
      mode = "n";
      key = "<leader>db";
      action = "<cmd>lua require('dap').toggle_breakpoint()<cr>";
      options = {
        silent = true;
        desc = "DAP Toggle Breakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>dB";
      action = "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>";
      options = {
        silent = true;
        desc = "DAP Conditional Breakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>dl";
      action = "<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>";
      options = {
        silent = true;
        desc = "DAP Log Point";
      };
    }
    {
      mode = "n";
      key = "<leader>dr";
      action = "<cmd>lua require('dap').repl.open()<cr>";
      options = {
        silent = true;
        desc = "DAP REPL";
      };
    }
    {
      mode = "n";
      key = "<leader>dt";
      action = "<cmd>lua require('dapui').toggle()<cr>";
      options = {
        silent = true;
        desc = "DAP UI Toggle";
      };
    }
    {
      mode = "n";
      key = "<leader>dq";
      action = "<cmd>lua require('dap').terminate()<cr>";
      options = {
        silent = true;
        desc = "DAP Terminate";
      };
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>dh";
      action = "<cmd>lua require('dap.ui.widgets').hover()<cr>";
      options = {
        silent = true;
        desc = "DAP Hover Value";
      };
    }
  ];
}
