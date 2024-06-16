# My Neovim configuration

![nvim1](./screenshots/nvim_1.png)

# Dependencies

In order to proceed we will need a few things

# LSP (Language server protocol)

Use leader + m + m to launch mason and manage language servers, formatters, etc

By default it install lua_ls, tsserver and pylsp

Formatters set with null-ls are stylua, prettier and black. Although they need 
to be installed

<h2>Telescope</h2>

```bash
sudo pacman -S fd ripgrep
```

# Installation

You need to clone the repo:

```bash
cd ~/.config
git clone https://github.com/ferDev27/nvim.git
```

Open init.lua

```bash
cd ~/.config/nvim
nvim init.lua
```

**Wait for the installation to finish, and you are set**

# Keybinds

You can check/edit the keybinds here:

```bash
nvim ~/.config/nvim/lua/ferDev27/keys.lua
```

Also by pressing the _space_ it will open which-key with some extra binds, you can check/edit here:

```bash
nvim ~/.config/nvim/lua/ferDev27/whichkey.lua
```
