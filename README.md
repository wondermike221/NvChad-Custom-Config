# NvChad-Custom-Config
This repository contains my personalized NvChad configuration, incorporating LSP, Copilot, and syntax highlighting features.

## Introduction
Crafting a neovim configuration from the ground up can be quite challenging! Fortunately, the fantastic community rallied together to launch the [NvChad](https://github.com/NvChad/NvChad) project, which offers a speedy start with pre-configured defaults. This amazing project has become an integral part of my daily routine. As a frequent Python, Go, and Rust user, I've developed this customization to seamlessly integrate LSP support.

## Installation
For linux/macos:
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && git clone https://github.com/wondermike221/NvChad-Custom-Config.git ~/.config/nvim/lua/custom --depth 1 && nvim
```

For windows:
```
git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1 && git clone https://github.com/wondermike221/NvChad-Custom-Config.git $HOME\AppData\Local\nvim\lua\custom --depth 1 && nvim
```

### Note
If you encounter the following error:
```
Error detected while processing /home/enderst/.config/nvim/init.lua:
Invalid import spec. `import` should be a string: {
```
Fix it by modifying the plugin conf:   
https://github.com/NvChad/NvChad/blob/v2.0/lua/plugins/init.lua   
--> ~/.config/nvim/lua/plugins/init.lua   
From:
```
if #config.plugins > 0 then
  table.insert(default_plugins, { import = config.plugins })
end
```
To:
```
if #config.plugins > 0 then
  for _, plugin in ipairs(config.plugins) do
    table.insert(default_plugins, plugin)
  end
end
```

## Plugins
Thanks to the plugin creators:
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [max397574/better-escape.nvim](https://github.com/max397574/better-escape.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [williamboman/nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
- [p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)
- [m4xshen/autoclose.nvim"](https://github.com/m4xshen/autoclose.nvim)
