{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      sh = ["shellcheck"];
      lua = ["luacheck"];
      javascript = ["eslint"];
      javascriptreact = ["eslint"];
      typescript = ["eslint"];
      typescriptreact = ["eslint"];
      json = ["eslint"];
      jsonc = ["eslint"];
      yaml = ["yamllint"];
      nix = ["nix"];
      markdown = ["markdownlint"];
    };
  };
}
