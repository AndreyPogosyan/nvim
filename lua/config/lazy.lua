-- Bootstrap lazy.nvim


-- Sets the path to where lazy.nvim plugin manager is installed. In this case, its ~/.config/nvim/lazy/lazy.nvim.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"


-- Check to see if the lazy.nvim plugin manager is installed, if it is not installed, it will be clone from github and installed.
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end


--This modifies Neovim's runtime path (RTP) by adding lazypath to the beginning of the list. The runtime path is a list of directories Neovim searches for.
vim.opt.rtp:prepend(lazypath)


-- Sets the leader key to space.
vim.g.mapleader = " "


-- Sets the local leader key to backslash.
vim.g.maplocalleader = "\\"


-- Sets up lazy.nvim, a modern plugin manager for Neovim, by configuring how plugins are loaded, installed, and updated.
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },

  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },

  -- automatically check for plugin updates
  checker = { enabled = true },
})
