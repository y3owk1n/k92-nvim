{
  plugins.telescope = {
    enable = true;
    defaults = {
      prompt_prefix = " ";
      selection_caret = " ";
      get_selection_window = {
        __raw = ''
          function()
            local wins = vim.api.nvim_list_wins()
            table.insert(wins, 1, vim.api.nvim_get_current_win())
            for _, win in ipairs(wins) do
              local buf = vim.api.nvim_win_get_buf(win)
              if vim.bo[buf].buftype == "" then
                return win
              end
            end
            return 0
          end
        '';
      };
    };
    extensions = { fzf-native.enable = true; };
  };
  keymaps = [
    # ----------------------- Quick Access -----------------------
    {
      mode = "n";
      key = "<leader><space>";
      action =
        "<cmd>lua require('telescope.builtin').find_files({hidden = false})<CR>";
      options.desc = "Find Files";
    }
    # ----------------------- Files -----------------------
    {
      mode = "n";
      key = "<leader>ff";
      action =
        "<cmd>lua require('telescope.builtin').find_files({hidden = false})<CR>";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>fF";
      action =
        "<cmd>lua require('telescope.builtin').find_files({hidden = true})<CR>";
      options.desc = "Find Files (Hidden)";
    }
    # ----------------------- Search -----------------------
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>lua require('telescope.builtin').diagnostics()<CR>";
      options.desc = "Find Diagnostics";
    }
    {
      mode = "n";
      key = "<leader>sg";
      action =
        "<cmd>lua require('telescope.builtin').live_grep({hidden = false})<CR>";
      options.desc = "Grep Files";
    }
    {
      mode = "n";
      key = "<leader>sG";
      action =
        "<cmd>lua require('telescope.builtin').live_grep({hidden = true})<CR>";
      options.desc = "Grep Files (Hidden)";
    }
    {
      mode = "n";
      key = "<leader>sh";
      action = "<cmd>lua require('telescope.builtin').help_tags()<CR>";
      options.desc = "Find Help";
    }
    {
      mode = "n";
      key = "<leader>sH";
      action = "<cmd>lua require('telescope.builtin').highlights()<CR>";
      options.desc = "Find Highlight Groups";
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = "<cmd>lua require('telescope.builtin').keymaps()<CR>";
      options.desc = "Find Keymaps";
    }
    {
      mode = "n";
      key = "<leader>sm";
      action = "<cmd>lua require('telescope.builtin').marks()<CR>";
      options.desc = "Find Marks";
    }
    {
      mode = "n";
      key = "<leader>sp";
      action =
        "<cmd>lua require('telescope').extensions.yank_history.yank_history({})<CR>";
      options.desc = "Open Yank History";
    }
    {
      mode = "n";
      key = "<leader>ss";
      action = "<cmd>lua require('telescope.builtin').resume()<CR>";
      options.desc = "Resume Last Picker";
    }
    {
      mode = "n";
      key = "<leader>sw";
      action =
        "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>";
      options.desc = "Find Words in Buffer";
    }
    # ----------------------- Git -----------------------
    {
      mode = "n";
      key = "<leader>gb";
      action =
        "<cmd>lua require('telescope.builtin').git_branches({ use_file_path = true })<CR>";
      options.desc = "Git Branches";
    }
    {
      mode = "n";
      key = "<leader>gc";
      action =
        "<cmd>lua require('telescope.builtin').git_commits({ use_file_path = true })<CR>";
      options.desc = "Git Commits (Repository)";
    }
    {
      mode = "n";
      key = "<leader>gC";
      action =
        "<cmd>lua require('telescope.builtin').git_bcommits({ use_file_path = true })<CR>";
      options.desc = "Git Commits (Current File)";
    }
    {
      mode = "n";
      key = "<leader>gt";
      action =
        "<cmd>lua require('telescope.builtin').git_status({ use_file_path = true })<CR>";
      options.desc = "Git Status";
    }
  ];
}
