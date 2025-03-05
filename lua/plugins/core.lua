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
    lazy = false,
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        width = 30,
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   -- enabled = false,
  --   -- lazy = false,
  -- },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   -- lazy = false,
  -- },
  {
    "folke/noice.nvim",
    opts = {
      -- cmdline = {
      --   enabled = false,
      -- },
      popupmenu = {
        enabled = false,
      },
      messages = {
        enabled = false, -- enables the Noice messages UI
      },
      notify = {
        enabled = false,
      },
      lsp = {
        progress = {
          enabled = false,
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    -- lazy = true,
    dependencies = {
      "mason.nvim",
      { "williamboman/mason-lspconfig.nvim" },
    },
    opts = {
      inlay_hints = {
        enabled = true,
      },
      servers = {
        -- pyright = {
        --   mason = false,
        --   enabled = false,
        -- },
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
      },
    },
  },
}
