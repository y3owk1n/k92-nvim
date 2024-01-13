{
  plugins.lsp = {
    enable = true;
    servers = {
      biome = {
        enable = true;
        installLanguageServer = false;
      };
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
  keymaps = [
    {
      mode = "n";
      key = "]d";
      options = { desc = "Next Diagnostic"; };
      action = "<cmd>lua vim.diagnostic.goto_next()<CR>";
    }
    {
      mode = "n";
      key = "[d";
      options = { desc = "Prev Diagnostic"; };
      action = "<cmd>lua vim.diagnostic.goto_prev()<CR>";
    }
    {
      mode = "n";
      key = "K";
      options = { desc = "Hover"; };
      action = "<cmd>lua vim.lsp.buf.hover()<CR>";
    }
    {
      mode = "n";
      key = "gK";
      options = { desc = "Signature Help"; };
      action = "<cmd>lua vim.lsp.buf.signature_help()<CR>";
    }
    {
      mode = "n";
      key = "gD";
      options = { desc = "References"; };
      action = "<cmd>lua vim.lsp.buf.references()<CR>";
    }
    {
      mode = "n";
      key = "gd";
      options = { desc = "Definition"; };
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
    }
    {
      mode = "n";
      key = "gi";
      options = { desc = "Implementation"; };
      action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
    }
    {
      mode = "n";
      key = "gt";
      options = { desc = "Type Definition"; };
      action = "<cmd>lua vim.lsp.buf.type_definition()<CR>";
    }
    {
      mode = "n";
      key = "<leader>ca";
      options = { desc = "Code Action"; };
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
    }
    {
      mode = "n";
      key = "<leader>cl";
      options = { desc = "Lsp Info"; };
      action = "<cmd>LspInfo<CR>";
    }
  ];
}
