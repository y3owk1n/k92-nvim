{
  keymaps = [{
    mode = "n";
    key = "<leader>e";
    action = "<cmd>Neotree toggle<cr>";
    options.silent = true;
  }];

  plugins.neo-tree = {
    enable = true;

    closeIfLastWindow = true;
    window = { position = "current"; };
  };
}
