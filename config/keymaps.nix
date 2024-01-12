{
  keymaps = [
    {
      mode = "n";
      key = "-";
      options.desc = "Split window below";
      action = "<C-W>s";
    }
    {
      mode = "n";
      key = "|";
      options.desc = "Split window right";
      action = "<C-W>v";
    }
    {
      mode = "n";
      key = "<leader>wx";
      options.desc = "Close current split";
      action = ":close<cr>";
    }
    {
      mode = "n";
      key = "<C-a>";
      options.desc = "Select all text";
      action = "gg<S-v>G";
    }
    {
      mode = "n";
      key = "<C-d>";
      options.desc = "Half page down and center";
      action = "<C-d>zz";
    }
    {
      mode = "n";
      key = "<C-u>";
      options.desc = "Half page up and center";
      action = "<C-u>zz";
    }
    {
      mode = "n";
      key = "n";
      options.desc = "Search next and center";
      action = "nzzzv";
    }
    {
      mode = "n";
      key = "N";
      options.desc = "Search previous and center";
      action = "Nzzzv";
    }
    {
      mode = "v";
      key = "J";
      options.desc = "Move line up";
      action = ":m '>+1<cr>gv=gv";
    }
    {
      mode = "v";
      key = "K";
      options.desc = "Move line down";
      action = ":m '<-2<cr>gv=gv";
    }
    {
      mode = "v";
      key = "K";
      options.desc = "Move line down";
      action = ":m '<-2<cr>gv=gv";
    }
    {
      mode = [ "n" "x" ];
      key = "j";
      options.expr = true;
      options.silent = true;
      action = "v:count == 0 ? 'gj' : 'j'";
    }
    {
      mode = [ "n" "x" ];
      key = "<Down>";
      options.expr = true;
      options.silent = true;
      action = "v:count == 0 ? 'gj' : 'j'";
    }
    {
      mode = [ "n" "x" ];
      key = "k";
      options.expr = true;
      options.silent = true;
      action = "v:count == 0 ? 'gk' : 'k'";
    }
    {
      mode = [ "n" "x" ];
      key = "<Up>";
      options.expr = true;
      options.silent = true;
      action = "v:count == 0 ? 'gk' : 'k'";
    }
    {
      mode = [ "v" ];
      key = "<";
      action = "<gv";
    }
    {
      mode = [ "v" ];
      key = ">";
      action = ">gv";
    }
    {
      mode = "n";
      key = "<leader>fn";
      options.desc = "New File";
      action = "<cmd>enew<cr>";
    }
    {
      mode = "n";
      key = "<leader>xl";
      options.desc = "Location List";
      action = "<cmd>lopen<cr>";
    }
    {
      mode = "n";
      key = "<leader>xq";
      options.desc = "Quickfix List";
      action = "<cmd>copen<cr>";
    }
  ];
}
