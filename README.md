# k92-nvim

Neovim configuration build using [nixvim](https://github.com/nix-community/nixvim) with stripped off [LazyVim](https://www.lazyvim.org/) features that only matters to me.

> Probably not using this for full time, until lazy loading is implemented and the issue can be found here 👉🏼 [Lazy loading #421](https://github.com/nix-community/nixvim/issues/421). In my opinion, everything i need can be configured within nixvim, but the startup time is still something concerning me.

![Screenshot 2024-01-13 at 11 32 28 PM](https://github.com/y3owk1n/k92-nvim/assets/62775956/6022ee02-ab6b-40b3-b842-71cb635d4406)

## Plugins included

- cmp
- codeium (vim version)
- catppuccin
- comment-nvim
- conform
- fidget
- gitsigns
- harpoon
- inc-rename
- lint
- lsp
- lualine
- luasnip
- neogen
- neotree
- nvim-cmp
- surround
- telescope
- tmux-navigator
- treesitter-context
- treesitter-textobjects
- treesitter
- trouble
- ts-autotag
- ts-context-commentstring
- undotree
- which-key
- yanky

### This will also automatically install the following lsp servers

- biome (auto detect biome.json or use prettierd for formatting)
- eslint
- jsonls
- lua-ls
- marksman
- nil_ls
- prismals
- tailwindcss
- tsserver
- yamlls

### This will also automatically install some linters and formatters

- markdownlint-cli
- yamllint
- prettierd
- nixfmt
- nixpkgs-fmt
- luajitPackages.luacheck
- stylua
- codespell
- beautysh
- shellcheck

## How to Run

You can run this directly from the command line with:

```shell
nix run github:y3owk1n/k92-nvim
```

You can also plug this into a flake to include it into a system configuration.

```nix
{
  inputs = {
    k92.url = "github:y3owk1n/k92-nvim";
  };
}
```

This input can then be used as an overlay to replace the default neovim.

```nix
{ k92-nvim, ... }:
{
    overlays = (final: prev: {
      neovim = k92-nvim.packages.${prev.system}.default;
    });
}
```

### The way that I am using this package

```nix
# flake.nix

{
  ...
  inputs = {
    ...other inputs (e.g. nixpkgs, home-manager, darwin, ...)

    k92-nvim.url = "github:y3owk1n/k92-nvim"; <- import this flake
  };

  outputs = inputs@{ nixpkgs, home-manager, darwin, k92-nvim, ... }:
  ...rest of outputs configuration
}
```

I'm using this with darwin configuration.

```nix
# modules/darwin.nix

{ pkgs, username, system, inputs, ... }: {
  ...imports

  environment.systemPackages = [ inputs.k92-nvim.packages.${system}.default ]; <- add it to system packages
}
```
