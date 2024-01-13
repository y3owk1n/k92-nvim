{
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    theme = "catppuccin";
    sectionSeparators = {
      left = "";
      right = "";
    };
    componentSeparators = {
      left = "";
      right = "";
    };
    sections = {
      lualine_a = [ "mode" ];
      lualine_b = [{
        name = "filename";
        extraConfig = { path = 4; };
      }];
      lualine_c = [
        {
          name = "diagnostics";
          extraConfig = {
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = " ";
            };
          };
        }
        {
          name = "filetype";
          extraConfig = { icon_only = true; };
        }
        {
          name.__raw = ''
            function()
              return vim.api.nvim_call_function("codeium#GetStatusString", {})
            end
          '';
        }
      ];

      lualine_x = [
        "branch"
        {
          name = "diff";
          extraConfig = {
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };
            source = ''
              function()
                local gitsigns = vim.b.gitsigns_status_dict
                if gitsigns then
                  return {
                    added = gitsigns.added,
                    modified = gitsigns.changed,
                    removed = gitsigns.removed,
                  }
                end
              end
            '';
          };
        }
      ];

      lualine_y = [{
        name = "progress";
        extraConfig = {
          padding = {
            left = 0;
            right = 1;
          };
        };
      }];

      lualine_z = [{
        name = "location";
        # extraConfig = {
        #   padding = {
        #     left = 0;
        #     right = 0;
        #   };
        # };
      }];
    };

    extensions = [ "neo-tree" "quickfix" "trouble" ];
  };
}
