{ pkgs, ... }: {
  extraPackages = with pkgs; [
    markdownlint-cli
    yamllint
    prettierd
    nixfmt
    nixpkgs-fmt
    luajitPackages.luacheck
    stylua
    codespell
    beautysh
    shellcheck
  ];
}
