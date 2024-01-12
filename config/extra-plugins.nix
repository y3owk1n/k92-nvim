{ pkgs, ... }: { extraPlugins = with pkgs.vimPlugins; [ codeium-vim ]; }
