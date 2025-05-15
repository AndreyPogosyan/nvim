# 🧠 Neovim Configuration

A modern, fast, and extensible Neovim configuration written in **Lua**, tailored for web development with built-in support for LSP, formatting, and linting.

---

## ✨ Features

- ⚡ **Lightning-fast** Neovim setup using native Lua
- 🔧 **LSP-ready** for:
  - JavaScript / TypeScript
  - Python
  - Lua
- 🧩 Built-in support for formatting and linting
- 🔍 Treesitter syntax highlighting
- 🗂️ File explorer, status line, fuzzy finder, Git integration, and more

---

## ⚙️ Requirements

Make sure you have the following installed:

- [`npm`](https://nodejs.org/en/download/) – for language servers and tooling
- [`stylua`](https://github.com/JohnnyMorganz/StyLua) – Lua code formatter
- [`wl-clipboard`](https://github.com/bugaevc/wl-clipboard) – for clipboard integration on Wayland

### 📦 Install requirements on Arch Linux:

```bash
sudo pacman -S npm stylua wl-clipboard
