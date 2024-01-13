{
  plugins.harpoon = { enable = true; };
  keymaps = [
    {
      mode = "n";
      key = "<leader>ha";
      options = { desc = "Add File"; };
      action = "<cmd>lua require('harpoon.mark').add_file()<CR>";
    }
    {
      mode = "n";
      key = "<leader>he";
      options = { desc = "Explorer"; };
      action = "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>";
    }
  ];
}
