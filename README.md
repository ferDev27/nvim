# My Neovim configuration

![nvim1](./screenshots/nvim_1.png)

# Dependencies

In order to proceed we will need a few things

# LSP (Language server protocol)

```bash
npm i -g vscode-langservers-extracted
```

```bash
npm install -g typescript typescript-language-server
```

```bash
npm install -g intelephense
```

```bash
pip install "python-lsp-server[all]"
```

```bash
sudo pacman -S clang
```

<h2>Telescope</h2>

```bash
sudo pacman -S fd ripgrep
```

<h2>Formatters</h2>

```bash
npm install -g prettier
```

```bash
pip install black
```

```bash
sudo pacman -S stylua
```

```bash
npm install -g blade-formatter
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

Also by pressing the _space_ ` ` it will open which-key with some extra binds, you can check/edit here:

```bash
nvim ~/.config/nvim/lua/ferDev27/whichkey.lua
```
