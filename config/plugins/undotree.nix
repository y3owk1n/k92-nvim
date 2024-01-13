{
  plugins.undotree = { enable = true; };
  keymaps = [{
    mode = "n";
    key = "<leader>u";
    options = { desc = "Toggle undotree"; };
    action = "<cmd>UndotreeToggle<cr>";
  }];
}

