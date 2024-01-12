# K92-nvim

Neovim configuration build using [nixvim](https://github.com/nix-community/nixvim) with stripped off [LazyVim](https://www.lazyvim.org/) features that only matters to me.

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
