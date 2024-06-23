return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
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
        },
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    -- opts = {
    --   level = 3,
    --   render = "minimal",
    --   stages = "static",
    -- },
    enabled = false,
  },
  {
    "folke/noice.nvim",
    opts = {
      notify = {
        enabled = false,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff_lsp = {
          mason = true,
        },
        ruff = {
          mason = true,
        },
        lua_language_server = {
          mason = true,
        },
        shfmt = {
          mason = true,
        },
        stylua = {
          mason = true,
        },
      },
    },
  },
}
