return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
      exclude = {
        filetypes = { "dashboard", "alpha", "startify", "neo-tree", "help", "lazy" }, -- Add any dashboard plugin filetypes
        buftypes = { "terminal", "nofile" }, -- Exclude special buffers
      },
      scope = { enabled = false }, -- Disable scope highlighting
    },
    config = function()
      require("ibl").setup({
        exclude = {
          filetypes = { "dashboard", "alpha", "startify", "neo-tree", "help", "lazy" },
          buftypes = { "terminal", "nofile" },
        },
        scope = { enabled = false }, -- Ensure scope is disabled in setup
      })
    end
  }
}

