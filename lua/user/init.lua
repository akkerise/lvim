return {
  colorscheme = "onedark",
  log = {
    level = 'warn'
  },
  keys = {
    normal_mode = {
      ["<F2>"] = ":set spell!<CR>", -- toggle spell check
      ["<F4>"] = ":set spelllang=en<CR>",
      ["<F3>"] = ":set spelllang=pt_br<CR>",
      ["<C-s>"] = ":w<cr>",
      ["<S-l>"] = ":BufferLineCycleNext<CR>",
      ["<S-h>"] = ":BufferLineCyclePrev<CR>",
    },
    insert_mode = {
      ["<C-l>"] = "<Right>",
      ["<C-h>"] = "<Left>",
      ["<C-j>"] = "<Down>",
      ["<C-k>"] = "<Up>",
      ["jj"] = "<Esc>"
    }
  },
  reload_config_on_save = true,
  format_on_save = true,
  builtin = {
    nvimtree = {
      active = true,
      on_config_done = nil,
      setup = {
        view = {
          side = "left"
        },
        renderer = {
          icons = {
            show = {
              git = true
            }
          }
        }
      }
    },
    alpha = {
      active = true,
      mode = "dashboard"
    },
    terminal = {
      active = true,
      direction = "horizontal",
      hide_numbers = false
    },
    dap = {
      active = true
    },
    breadcrumbs = {
      active = true
    },
    treesitter = {
      ensure_installed = {
        "javascript",
        "typescript",
        "python",
        "java",
        "json",
        "yaml",
        "bash",
        "tsx",
        "css",
        "lua",
        "php",
        "go",
        "c",
      },
      ignore_install = { "haskell" },
      highlight = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      auto_install = true,
    },
  },
  keys = {
    normal_mode = {
      ["<F2>"] = ":set spell!<CR>", -- toggle spell check
      ["<F4>"] = ":set spelllang=en<CR>",
      ["<F3>"] = ":set spelllang=pt_br<CR>",
      ["<C-s>"] = ":w<cr>",
      ["<S-l>"] = ":BufferLineCycleNext<CR>",
      ["<S-h>"] = ":BufferLineCyclePrev<CR>",
    },
    insert_mode = {
      ["<C-l>"] = "<Right>",
      ["<C-h>"] = "<Left>",
      ["<C-j>"] = "<Down>",
      ["<C-k>"] = "<Up>",
      ["jj"] = "<Esc>",
    },
  }
}

-- lvim.builtin.telescope.defaults.initial_mode = "insert" lvim.builtin.telescope.defaults.layout_config.horizontal.mirror = false
-- lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 120
-- lvim.builtin.telescope.defaults.layout_config.prompt_position = "bottom"
-- lvim.builtin.telescope.defaults.layout_config.vertical.mirror = false
-- lvim.builtin.telescope.defaults.layout_config.width = 0.75
-- lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
