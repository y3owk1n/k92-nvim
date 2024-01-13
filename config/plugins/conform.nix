{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      timeoutMs = 500;
      lspFallback = true;
    };
    formatters = {
      biome = {
        condition = {
          __raw = ''
            function(self, ctx)
                function has_root(files)
                    local found = vim.fs.find(files, { upward = true, path = ctx.dirname })[1]
                    if found then
                        return true
                    else
                        return false
                    end
                end
                if has_root({"biome.json", "package.json", "node_modules", ".git"}) then
                    return true
                else
                    return false
                end
            end
          '';
        };
      };
    };
    formattersByFt = {
      lua = [ "stylua" ];
      sh = [ "beautysh" ];
      fish = [ "fish_indent" ];
      # Use a sub-list to run only the first available formatter
      javascript = [[ "biome" "prettierd" ]];
      javascriptreact = [[ "biome" "prettierd" ]];
      typescript = [[ "biome" "prettierd" ]];
      typescriptreact = [[ "biome" "prettierd" ]];
      json = [[ "biome" "prettierd" ]];
      jsonc = [[ "biome" "prettierd" ]];
      markdown = [ "markdownlint" ];
      nix = [ "nixfmt" ];
      # Use the "*" filetype to run formatters on all filetypes.
      "*" = [ "codespell" ];
      # Use the "_" filetype to run formatters on filetypes that don't
      # have other formatters configured.
      "_" = [ "trim_whitespace" ];
    };
  };
  keymaps = [{
    mode = "n";
    key = "<leader>cf";
    options = { desc = "Conform Info"; };
    action = "<cmd>ConformInfo<CR>";
  }];
}
