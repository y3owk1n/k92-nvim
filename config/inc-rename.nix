{
  plugins.inc-rename = { enable = true; };
  keymaps = [{
    mode = "n";
    key = "<leader>cr";
    options = {
      expr = true;
      desc = "Rename";
    };
    action = ''
      function ()
          return ":IncRename " .. vim.fn.expand("<cword>")
      end
    '';
    lua = true;
  }];
}
