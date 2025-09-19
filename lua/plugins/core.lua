return {
  {
    "LazyVim/LazyVim",
    opts = {
      news = {
        lazyvim = false,
        neovim = false,
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = true,
        replace_netrw = true,
      },
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
        enabled = true,
        hidden = true,
        ignored = true,
        sources = {
          explorer = {
            cycle = true,
            auto_close = true,
            -- matcher = {
            --   sort_empty = true,
            --   fuzzy = true,
            -- },
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
                  { win = "input", height = 1,     border = "bottom" },
                  { win = "list",  border = "none" },
                },
                { win = "preview", border = "rounded", width = 0.7, title = "{preview}" },
              },
            },
          },
          files = {
            hidden = true,
            ignored = true,
          },
          buffers = {
            hidden = true,
            ignored = true,
          },
        },
        layout = {
          reverse = true,
          layout = {
            box = "horizontal",
            backdrop = false,
            width = 0.99,
            height = 0.99,
            border = "none",
            {
              box = "vertical",
              { win = "list",  title = " Results ", title_pos = "center", border = "rounded" },
              { win = "input", height = 1,          border = "rounded",   title = "{title} {live} {flags}", title_pos = "center" },
            },
            {
              win = "preview",
              title = "{preview:Preview}",
              width = 0.55,
              border = "rounded",
              title_pos = "center",
            },
          },
        },
        win = {
          input = {
            keys = {
              ["<C-j>"] = { "cancel", mode = "n" },
              ["<C-q>"] = { "cancel", mode = "i" },
            },
          },
        },
      },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
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
        ruff_lsp = {
          mason = false,
          enabled = false,
        },
        ruff = {
          mason = true,
          enabled = true,
        },
      },
    },
  },
}
