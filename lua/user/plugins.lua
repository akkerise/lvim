return {
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup {
        style = "dark", -- Styles: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
      }
      require("onedark").load()
    end,
  },
   {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
  -- {
  --   "Exafunction/codeium.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
  --   },
  --   config = function()
  --     require("codeium").setup({
  --       -- Optionally disable cmp source if using virtual text only
  --       enable_cmp_source = false,
  --       virtual_text = {
  --         enabled = true,
  --         -- These are the defaults

  --         -- Set to true if you never want completions to be shown automatically.
  --         manual = false,
  --         -- A mapping of filetype to true or false, to enable virtual text.
  --         filetypes = {},
  --         -- Whether to enable virtual text of not for filetypes not specifically listed above.
  --         default_filetype_enabled = true,
  --         -- How long to wait (in ms) before requesting completions after typing stops.
  --         idle_delay = 75,
  --         -- Priority of the virtual text. This usually ensures that the completions appear on top of
  --         -- other plugins that also add virtual text, such as LSP inlay hints, but can be modified if
  --         -- desired.
  --         virtual_text_priority = 65535,
  --         -- Set to false to disable all key bindings for managing completions.
  --         map_keys = true,
  --         -- The key to press when hitting the accept keybinding but no completion is showing.
  --         -- Defaults to \t normally or <c-n> when a popup is showing.
  --         accept_fallback = nil,
  --         -- Key bindings for managing completions in virtual text mode.
  --         key_bindings = {
  --           -- Accept the current completion.
  --           accept = "<Tab>",
  --           -- Accept the next word.
  --           accept_word = false,
  --           -- Accept the next line.
  --           accept_line = false,
  --           -- Clear the virtual text.
  --           clear = false,
  --           -- Cycle to the next completion.
  --           next = "<M-]>",
  --           -- Cycle to the previous completion.
  --           prev = "<M-[>",
  --         }
  --       }
  --     })
  --   end
  -- },
  -- {
  --   "rcarriga/nvim-dap-ui",
  --   dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  -- },
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
    end,
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-plenary",
      "nvim-neotest/neotest-python",
      "nvim-neotest/neotest-vim-test"
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            dap = {
              justMyCode = false,
              console = "integratedTerminal",
            },
            args = { "--log-level", "DEBUG", "--quiet" },
            runner = "pytest",
          }),
          require("neotest-plenary"),
          require("neotest-vim-test")({
            ignore_file_types = { "python", "vim", "lua" },
          }),
        }
      })
    end
  },
  -- { "lervag/vimtex" },
  -- { "lervag/vimtex" }, // Change themes
  -- { "lunarvim/colorschemes" },
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   run = "cd app && npm install",
  --   ft = "markdown",
  --   config = function()
  --     vim.g.mkdp_auto_start = 0
  --   end,
  -- },
  -- {
  --   "norcalli/nvim-colorizer.lua",
  --   config = function()
  --     require("colorizer").setup()
  --   end,
  -- },
  -- { 'folke/tokyonight.nvim' },
  -- {
  --   "folke/trouble.nvim",
  --   cmd = "TroubleToggle",
  -- },
  -- { "sainnhe/everforest" },
  -- { 'arcticicestudio/nord-vim' },
  -- { 'catppuccin/vim' },
  -- { 'ap/vim-css-color' },
  -- { 'nordtheme/nord' },
  -- { "nvim-tree/nvim-web-devicons" },
  -- { "sharkdp/fd" },
  -- { "BurntSushi/ripgrep" },
  -- { "rafamadriz/friendly-snippets" },
  -- { 'rmehri01/onenord.nvim' },
  -- {
  --   "L3MON4D3/LuaSnip",
  --   -- follow latest release.
  --   version = "1.2.1", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  --   -- install jsregexp (optional!).
  --   build = "make install_jsregexp"
  -- },
  -- {
  --   "roobert/tailwindcss-colorizer-cmp.nvim",
  --   -- optionally, override the default options:
  --   config = function()
  --     require("tailwindcss-colorizer-cmp").setup {
  --       color_square_width = 2,
  --     }
  --   end,
  -- },
  -- { "lvimuser/lsp-inlayhints.nvim" },
  -- {
  --   "nvim-treesitter/nvim-treesitter-textobjects",
  --   after = "nvim-treesitter",
  --   dependencies = "nvim-treesitter/nvim-treesitter",
  -- },
  -- { "jose-elias-alvarez/typescript.nvim" },
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   config = function()
  --     require("symbols-outline").setup()
  --   end,
  -- },
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = {
      "mfussenegger/nvim-dap"
    },
    config = function()
      require("dap-vscode-js").setup({
        -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
        -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
        -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
        adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
        -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
        -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
        -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
      })
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      local actions = require("telescope.actions")
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            },
            n = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            },
          },
        },
      })
    end,
  },

}
