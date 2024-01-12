{
  plugins.yanky = {
    enable = true;
    highlight = { timer = 250; };
    ring = { storage = "sqlite"; };
  };
  keymaps = [
    {
      mode = [ "n" "x" ];
      key = "y";
      options = { desc = "Yank text"; };
      action = "<Plug>(YankyYank)";
    }
    {
      mode = [ "n" "x" ];
      key = "p";
      options = { desc = "Put yanked text after cursor"; };
      action = "<Plug>(YankyPutAfter)";
    }
    {
      mode = [ "n" "x" ];
      key = "P";
      options = { desc = "Put yanked text before cursor"; };
      action = "<Plug>(YankyPutBefore)";
    }
    {
      mode = "n";
      key = "[y";
      options = { desc = "Cycle backward through yank history"; };
      action = "<Plug>(YankyCycleBackward)";
    }
    {
      mode = "n";
      key = "]y";
      options = { desc = "Cycle forward through yank history"; };
      action = "<Plug>(YankyCycleForward)";
    }
  ];
}
