{
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    theme = "catppuccin";
    sections = {
      lualine_a = [ "mode" ];
      lualine_b = [ "branch" ];
      lualine_c = [
        "filename"
        {
          name = "diagnostics";
          extraConfig = {
            separator = "";
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
          extraConfig = {
            icon_only = true;
            separator = "";
            padding = {
              left = 1;
              right = 0;
            };
          };
        }
      ];

      lualine_x = [
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
        {
          name.__raw = ''
            function()
              return vim.api.nvim_call_function("codeium#GetStatusString", {})
            end
          '';
        }
      ];

      lualine_y = [{
        name = "progress";
        extraConfig = {
          separator = " ";
          padding = {
            left = 0;
            right = 1;
          };
        };
      }];

      lualine_z = [{
        name = "location";
        extraConfig = {
          padding = {
            left = 1;
            right = 0;
          };
        };
      }];
    };

    extensions = [ "neo-tree" ];
  };
}
