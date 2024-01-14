{
  extraConfigLua = ''
    vim.cmd([[let &t_Cs = "\e[4:3m]"]])
    vim.cmd([[let &t_Ce = "\e[4:0m]"]])

    vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

    vim.opt.completeopt = "menu,menuone,noselect"
    vim.opt.formatoptions:append({ "r" })
    vim.opt.fillchars = {
        foldopen = "",
        foldclose = "",
        -- fold = "⸱",
        fold = " ",
        foldsep = " ",
        diff = "╱",
        eob = " ",
    }
    vim.opt.iskeyword:append("-") -- consider string-string as whole words

    if vim.fn.has("nvim-0.10") == 1 then
        vim.opt.smoothscroll = true
    end

    if vim.fn.has("nvim-0.8") == 1 then
      vim.opt.cmdheight = 0
    end

    -- To instead override globally
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or "rounded"
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end

    -- Change error sign
    local signs = { Error = "", Warn = "", Hint = "", Info = "" }
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

  '';
}
