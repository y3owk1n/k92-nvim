{
  colorschemes.catppuccin = {
    enable = true;
    flavour = "macchiato";
    transparentBackground = true;
    showBufferEnd = false;
    background = {
      light = "latte";
      dark = "macchiato";
    };
    dimInactive = {
      enabled = true;
      shade = "dark";
      percentage = 0.15;
    };
    integrations = {
      cmp = true;
      fidget = true;
      gitsigns = true;
      harpoon = true;
      # headlines = true;
      lsp_trouble = true;
      markdown = true;
      native_lsp = {
        enabled = true;
        underlines = {
          errors = [ "undercurl" ];
          hints = [ "undercurl" ];
          warnings = [ "undercurl" ];
          information = [ "undercurl" ];
        };
      };
      neotree = true;
      telescope = { enabled = true; };
      treesitter = true;
      treesitter_context = true;
      which_key = true;

    };
  };
}
