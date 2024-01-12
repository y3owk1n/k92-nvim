{
  plugins.lsp = {
    enable = true;
    keymaps = {
      diagnostic = {
        "]d" = "goto_next";
        "[d" = "goto_prev";
      };
      lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
      };
    };
    servers = {
      biome.enable = true;
      eslint.enable = true;
      jsonls.enable = true;
      lua-ls.enable = true;
      marksman.enable = true;
      nil_ls.enable = true;
      prismals.enable = true;
      tailwindcss.enable = true;
      tsserver.enable = true;
      yamlls.enable = true;
    };
  };
}
