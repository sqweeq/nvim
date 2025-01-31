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
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      -- window = {
      --   mappings = {
      --     ["P"] = { "toggle_preview", config = { use_float = true } },
      --   },
      -- },
      -- event_handlers = {
      --   {
      --     event = "after_render",
      --     handler = function()
      --       local state = require("neo-tree.sources.manager").get_state("filesystem")
      --       if not require("neo-tree.sources.common.preview").is_active() then
      --         state.config = { use_float = false } -- or whatever your config is
      --         state.commands.toggle_preview(state)
      --       end
      --     end,
      --   },
      -- },
    },
  },
  {
    "rcarriga/nvim-notify",
    -- opts = {
    --   level = 3,
    --   render = "minimal",
    --   stages = "static",
    -- },
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
  --   "williamboman/mason.nvim",
  --   opts = {
  --     ensure_installed = {
  -- "stylua",
  -- "ruff-lsp",
  -- "ruff",
  -- "lua_language_server",
  -- "shfmt",
  -- "shellcheck",
  -- "shfmt",
  -- "flake8",
  --     },
  --   },
  -- },
  -- {
  -- "neovim/nvim-lspconfig",
  -- dependencies = {
  --   "mason.nvim",
  --   { "williamboman/mason-lspconfig.nvim", config = function() end },
  -- },
  -- opts = {
  --   servers = {
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
  --     },
  --   },
  -- },
}
