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
      # aerial = true;
      # alpha = true;
      cmp = true;
      # dashboard = true;
      # flash = true;
      # gitsigns = true;
      # harpoon = true;
      # headlines = true;
      # illuminate = true;
      # indent_blankline.enabled = true;
      # lsp_trouble = true;
      markdown = true;
      # mini.enabled = true;
      native_lsp = {
        enabled = true;
        underlines = {
          errors = [ "undercurl" ];
          hints = [ "undercurl" ];
          warnings = [ "undercurl" ];
          information = [ "undercurl" ];
        };
      };
      # navic = {
      # enabled = true;
      # custom_bg = "lualine";
      # };
      # neotest = true;
      # neotree = true;
      # noice = true;
      # notify = true;
      # semantic_tokens = true;
      telescope = { enabled = true; };
      treesitter = true;
      treesitter_context = true;
      which_key = true;

    };
  };
}
