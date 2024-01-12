{
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      options.silent = true;
      action = "<cmd>Lexplore<CR>";
    }
    {
      mode = "i";
      key = "<Right>";
      options = {
        silent = true;
        desc = "Codeium Accept";
      };
      action = "<cmd>call codeium#Accept()<CR>";
    }
  ];
}
