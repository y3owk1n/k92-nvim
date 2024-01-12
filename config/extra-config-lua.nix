{
  extraConfigLua = ''
    vim.cmd([[let &t_Cs = "\e[4:3m]"]])
    vim.cmd([[let &t_Ce = "\e[4:0m]"]])

    vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

    vim.opt.completeopt = "menu,menuone,noselect"
    vim.opt.formatoptions:append({ "r" })
    vim.opt.fillchars = { eob = " " }
    vim.opt.iskeyword:append("-") -- consider string-string as whole words

    if vim.fn.has("nvim-0.8") == 1 then
      vim.opt.cmdheight = 0
    end
  '';
}
