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
      { "williamboman/mason-lspconfig.nvim", config = function() end, opts = {} },
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
  {
    "nvimdev/dashboard-nvim",
    lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
    opts = function()
      -- local logo = [[
      --      ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
      --      ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
      --      ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
      --      ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
      --      ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
      --      ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
      -- ]]
      local logo = [[lazy]]

      -- logo = string.rep("\n", 8) .. logo .. "\n\n"
      logo = string.rep("\n", 5) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        vertical_center = false, -- Center the Dashboard on the vertical (from top to bottom)
        config = {
          header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,                           desc = " Explore Neotree cwd",       icon = "e ", key = "e" },
          { action = function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,                           desc = " Explore Neotree Root",       icon = "E ", key = "E" },
          { action = 'lua LazyVim.pick()()',                           desc = " Find File",       icon = " ", key = "f" },
          { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
          { action = 'lua LazyVim.pick("oldfiles")()',                 desc = " Recent Files",    icon = " ", key = "r" },
          { action = 'lua LazyVim.pick("live_grep")()',                desc = " Find Text",       icon = " ", key = "g" },
          { action = 'lua LazyVim.pick.config_files()()',              desc = " Config",          icon = " ", key = "c" },
          { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
          { action = "LazyExtras",                                     desc = " Lazy Extras",     icon = " ", key = "x" },
          { action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
        },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- open dashboard after closing lazy
      if vim.o.filetype == "lazy" then
        vim.api.nvim_create_autocmd("WinClosed", {
          pattern = tostring(vim.api.nvim_get_current_win()),
          once = true,
          callback = function()
            vim.schedule(function()
              vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
            end)
          end,
        })
      end

      return opts
    end,
  },
}
