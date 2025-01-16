-- GENERAL
local init = require('user.init')
lvim.keys = init.keys
lvim.colorscheme = init.colorscheme
lvim.format_on_save = init.format_on_save
lvim.log.level = init.log.level
lvim.reload_config_on_save = init.reload_config_on_save

vim.opt.incsearch = true
vim.opt.shiftwidth = 2

-- lvim.builtin.telescope.defaults.initial_mode = "insert" 
-- lvim.builtin.telescope.defaults.layout_config.horizontal.mirror = false
-- lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 120
-- lvim.builtin.telescope.defaults.layout_config.prompt_position = "bottom"
-- lvim.builtin.telescope.defaults.layout_config.vertical.mirror = false
-- lvim.builtin.telescope.defaults.layout_config.width = 0.75
-- lvim.builtin.telescope.defaults.layout_strategy = "horizontal"

lvim.builtin.treesitter = require('user.treesitter')
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.terminal.hide_numbers = false
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.breadcrumbs.active = true
lvim.builtin.dap.active = true

-- PLUGINS
lvim.plugins = require('user.plugins')
