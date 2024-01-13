{ pkgs, ... }: {
  extraPackages = with pkgs; [
    markdownlint-cli
    yamllint
    prettierd
    eslint_d
    nixfmt
    nixpkgs-fmt
  ];
}
