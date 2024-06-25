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
