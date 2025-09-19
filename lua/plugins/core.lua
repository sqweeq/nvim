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
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = true, replace_netrw = true },
      dashboard = {
        enabled = true,
        preset = {
          keys = {
            { icon = "E", key = "e", desc = "Explore", action = ":lua Snacks.explorer()" },
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
      picker = {
        sources = {
          explorer = {
            cycle = true,
            auto_close = true,
            layout = {

              { preview = true },
              layout = {
                box = "horizontal",
                width = 0.99,
                height = 0.99,
                {
                  box = "vertical",
                  border = "rounded",
                  title = "{source} {live} {flags}",
                  title_pos = "center",
                  { win = "input", height = 1, border = "bottom" },
                  { win = "list", border = "none" },
                },
                { win = "preview", border = "rounded", width = 0.7, title = "{preview}" },
              },
            },
          },
        },
        layout = { -- the layout config
          preset = "telescope",
          layout = { -- the layout itself
            width = 0.99, -- 0 is max
            height = 0.99,
          },
        },
        win = {
          input = {
            keys = {
              -- ["<a-s>"] = { "flash", mode = { "n", "i" } },
              -- ["s"] = { "flash" },
              ["<C-j>"] = { "cancel", mode = "n" },
            },
          },
        },
      },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
      {
        "<leader>e",
        function()
          Snacks.explorer()
        end,
        desc = "Explore",
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    lazy = true,
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
  { "ibhagwan/smartyank.nvim" },
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  {
    "folke/noice.nvim",
    opts = {
      -- cmdline = {
      --   enabled = false,
      -- },
      -- popupmenu = {
      --   enabled = false,
      -- },
      -- messages = {
      --   enabled = false, -- enables the Noice messages UI
      -- },
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
    event = "LazyFile",
    dependencies = {
      {
        "mason.nvim",
        opts = {
          ui = {
            ---@since 1.0.0
            -- Whether to automatically check for new versions when opening the :Mason window.
            check_outdated_packages_on_open = false,
          },
        },
      },
      { "mason-org/mason-lspconfig.nvim", config = function() end, opts = {} },
    },
    opts = {
      inlay_hints = {
        enabled = true,
      },
      servers = {
        pyright = {
          mason = false,
          enabled = false,
        },
        -- black = {
        --   mason = false,
        --   enabled = false,
        -- },
        ruff_lsp = {
          mason = false,
          enabled = false,
        },
        ruff = {
          mason = true,
          enabled = true,
        },
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
