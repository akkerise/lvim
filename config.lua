-- GENERAL
local init = require('user.init')
lvim.keys = init.keys
lvim.colorscheme = init.colorscheme
-- lvim.format_on_save = init.format_on_save
lvim.log.level = init.log.level
lvim.reload_config_on_save = init.reload_config_on_save

vim.opt.incsearch = true
vim.opt.shiftwidth = 2


lvim.builtin.telescope.active = true
lvim.builtin.telescope.defaults.initial_mode = "insert"
lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 120
lvim.builtin.telescope.defaults.layout_config.prompt_position = "bottom"
lvim.builtin.telescope.defaults.layout_config.width = 0.75
lvim.builtin.telescope.defaults.layout_strategy = "horizontal"

-- PLUGINS
lvim.plugins = require('user.plugins')

-- BUILTIN
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

-- lvim.builtin.which_key.mappings["dm"] = { "<cmd>lua require('neotest').run.run()<cr>", "Test Method" }
-- lvim.builtin.which_key.mappings["dM"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Test Method DAP" }
-- lvim.builtin.which_key.mappings["df"] = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class" }
-- lvim.builtin.which_key.mappings["dF"] = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP" }
-- lvim.builtin.which_key.mappings["dS"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" }
