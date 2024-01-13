{
  plugins.lint = {
    enable = true;
    autoCmd = {
      callback = {
        __raw = ''
          function()
            require('lint').try_lint()
          end
        '';
      };
      event = [ "InsertLeave" "BufWritePost" "BufEnter" ];
    };
    lintersByFt = {
      sh = [ "shellcheck" ];
      lua = [ "luacheck" ];
      fish = [ "fish" ];
      # javascript = [ "eslint_d" ];
      # javascriptreact = [ "eslint_d" ];
      # typescript = [ "eslint_d" ];
      # typescriptreact = [ "eslint_d" ];
      # json = [ "eslint_d" ];
      # jsonc = [ "eslint_d" ];
      yaml = [ "yamllint" ];
      nix = [ "nix" ];
      markdown = [ "markdownlint" ];
    };
  };
}
