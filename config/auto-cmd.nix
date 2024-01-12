{
  autoCmd = [
    {
      desc = "Highlight on yank";
      event = [ "TextYankPost" ];
      group = "highlight_yank";
      callback = {
        __raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      };
    }
    {
      desc = "Resize split if window got resized";
      event = [ "VimResized" ];
      group = "resize_splits";
      callback = {
        __raw = ''
          function()
            local current_tab = vim.fn.tabpagenr()
            vim.cmd("tabdo wincmd =")
            vim.cmd("tabnext " .. current_tab)
          end
        '';
      };
    }
    {
      desc = "Go to last loc when opening a buffer";
      event = [ "BufReadPost" ];
      group = "last_loc";
      callback = {
        __raw = ''
          function(event)
            local exclude = { "gitcommit" }
            local buf = event.buf
            if vim.tbl_contains(exclude, vim.bo[buf].filetype) or vim.b[buf].lazyvim_last_loc then
              return
            end
            vim.b[buf].lazyvim_last_loc = true
            local mark = vim.api.nvim_buf_get_mark(buf, '"')
            local lcount = vim.api.nvim_buf_line_count(buf)
            if mark[1] > 0 and mark[1] <= lcount then
              pcall(vim.api.nvim_win_set_cursor, 0, mark)
            end
          end
        '';
      };
    }
    {
      desc = "Close some file type with <q>";
      event = [ "FileType" ];
      pattern = [
        "PlenaryTestPopup"
        "help"
        "lspinfo"
        "man"
        "notify"
        "qf"
        "query"
        "spectre_panel"
        "startuptime"
        "tsplayground"
        "neotest-output"
        "checkhealth"
        "neotest-summary"
        "neotest-output-panel"
      ];
      group = "close_with_q";
      callback = {
        __raw = ''
          function(event)
            vim.bo[event.buf].buflisted = false
            vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
          end
        '';
      };
    }
    {
      desc = "Wrap and check for spell in text filetypes";
      event = [ "FileType" ];
      pattern = [ "gitcommit" "markdown" ];
      group = "wrap_spell";
      callback = {
        __raw = ''
          function()
            vim.opt_local.wrap = true
            vim.opt_local.spell = true
          end
        '';
      };
    }
    {
      desc = "Fix conceallevel for json files";
      event = [ "FileType" ];
      pattern = [ "json" "jsonc" ];
      callback = {
        __raw = ''
          function()
            vim.wo.spell = false
            vim.wo.conceallevel = 0
          end
        '';
      };
    }
    {
      desc = "Fix conceallevel for markdown files";
      event = [ "FileType" ];
      pattern = [ "markdown" ];
      callback = {
        __raw = ''
          function()
            vim.wo.conceallevel = 2
          end
        '';
      };
    }
    {
      desc =
        "Auto create dir when saving a file, in case some intermediate directory does not exist";
      event = [ "BufWritePre" ];
      group = "auto_create_dir";
      callback = {
        __raw = ''
          function(event)
            if event.match:match("^%w%w+://") then
              return
            end
            local file = vim.loop.fs_realpath(event.match) or event.match
            vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
          end
        '';
      };
    }
    {
      desc = "Turn off paste mode when leaving insert";
      event = [ "InsertLeave" ];
      pattern = [ "*" ];
      command = "set nopaste";
    }
  ];
}
