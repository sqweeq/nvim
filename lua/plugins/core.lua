return {
  {
    "LazyVim/LazyVim",
    opts = {
      news = {
        -- When enabled, NEWS.md will be shown when changed.
        -- This only contains big new features and breaking changes.
        lazyvim = false,
        -- Same but for Neovim's news.txt
        neovim = false,
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    enabled = true,
  },
  {
    "folke/noice.nvim",
    opts = {
      notify = {
        enabled = true,
      },
    },
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     inlay_hints = {
  --       enabled = true,
  --     },
  --   },
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   dependencies = {
  --     "mason.nvim",
  --     { "williamboman/mason-lspconfig.nvim", config = function() end },
  --   },
  --   opts = {
  --     servers = {
  --       pyright = {
  --         mason = false,
  --         enabled = false,
  --       },
  -- black = {
  --   mason = false,
  --   enabled = false,
  -- },
  -- ruff_lsp = {
  --   mason = true,
  --   enabled = true,
  -- },
  -- ruff = {
  --   mason = true,
  --   enabled = true,
  -- },
  -- lua_language_server = {
  --   mason = true,
  --   -- enabled = true,
  -- },
  -- shfmt = {
  --   mason = true,
  --   -- enabled = true,
  -- },
  -- stylua = {
  --   mason = true,
  --   -- enabled = true,
  -- },
  --     },
  --   },
  -- },
}
