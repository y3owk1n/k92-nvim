{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      timeoutMs = 500;
      lspFallback = true;
    };
    formattersByFt = {
      lua = [ "stylua" ];
      sh = [ "beatuysh" ];
      # Use a sub-list to run only the first available formatter
      javascript = [[ "biome" "prettierd" ]];
      javascriptreact = [[ "biome" "prettierd" ]];
      typescript = [[ "biome" "prettierd" ]];
      typescriptreact = [[ "biome" "prettierd" ]];
      json = [[ "biome" "prettierd" ]];
      jsonc = [[ "biome" "prettierd" ]];
      markdown = [ "markdownlint" ];
      nix = [ "nixfmt" ];
      prisma = [ "prismaFmt" ];
      # Use the "*" filetype to run formatters on all filetypes.
      "*" = [ "codespell" ];
      # Use the "_" filetype to run formatters on filetypes that don't
      # have other formatters configured.
      "_" = [ "trim_whitespace" ];
    };
  };
}
