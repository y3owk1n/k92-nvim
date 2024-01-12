{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [
    codeium-vim
    friendly-snippets
    sqlite-lua
  ];
}
