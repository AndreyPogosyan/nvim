return {
  -- Mason: Manage LSPs, Linters, Debuggers, and Formatters
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Ensure LSP servers are installed
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "html",        -- HTML Language Server
          "lua_ls",      -- Lua Language Server
          "luau_lsp",    -- Luau Language Server
          "pylsp",       -- Python Language Server
          "ts_ls",    -- TypeScript/JavaScript Language Server
        },
        automatic_installation = true,
      })
    end,
  },

  -- Ensure Linters and Formatters are installed
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = { "nvimtools/none-ls.nvim" }, -- null-ls (now called none-ls)
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "eslint_d", -- JavaScript Linter
          "prettier", -- JavaScript/TypeScript Formatter
          "pylint",   -- Python Linter
          "stylua",   -- Lua Formatter
        },
        automatic_installation = true,
      })
    end,
  },
}

