{
  plugins.trouble = {
    enable = true;
    useDiagnosticSigns = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      options = { desc = "Document Diagnostics (Trouble)"; };
      action = "<cmd>TroubleToggle document_diagnostics<cr>";
    }
    {
      mode = "n";
      key = "<leader>xX";
      options = { desc = "Workspace Diagnostics (Trouble)"; };
      action = "<cmd>TroubleToggle workspace_diagnostics<cr>";
    }
    {
      mode = "n";
      key = "<leader>xL";
      options = { desc = "Location List (Trouble)"; };
      action = "<cmd>TroubleToggle loclist<cr>";
    }
    {
      mode = "n";
      key = "<leader>xQ";
      options = { desc = "Quickfix List (Trouble)"; };
      action = "<cmd>TroubleToggle quickfix<cr>";
    }
  ];
}
