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
        expr = true;
        desc = "Codeium Accept";
      };
      action = ''
        function () 
          return vim.fn['codeium#Accept']() 
        end
      '';
      lua = true;
    }
    {
      mode = "i";
      key = "<C-n>";
      options = {
        silent = true;
        expr = true;
        desc = "Codeium Cycle Next";
      };
      action = ''
        function () 
          return vim.fn['codeium#CycleCompletions'](1) 
        end
      '';
      lua = true;
    }
  ];
}
