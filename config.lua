-- GENERAL
local init = require('user.init')
lvim.keys = init.keys
lvim.colorscheme = init.colorscheme
-- lvim.format_on_save = init.format_on_save
lvim.log.level = init.log.level
lvim.reload_config_on_save = init.reload_config_on_save
lvim.keys.insert_mode["jj"] = "<Esc>"


vim.opt.backup = true -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.showtabline = 2 -- always show tabs
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.numberwidth = 2 -- set number column width to 2 {default 4}
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.relativenumber = true -- relative line numbers
-- vim.opt.wrap = true -- wrap lines
vim.opt.incsearch = true
-- vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.colorcolumn = "99999" -- fixes indentline for now
-- vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
-- vim.opt.fileencoding = "utf-8" -- the encoding written to a file
-- vim.opt.mouse = "a" -- allow the mouse to be used in neovim
-- vim.opt.pumheight = 10 -- pop up menu height
-- vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.smartcase = true -- smart case
-- vim.opt.smartindent = true -- make indenting smarter again
-- vim.opt.splitbelow = true -- force all horizontal splits to go below current window
-- vim.opt.splitright = true -- force all vertical splits to go to the right of current window
-- vim.opt.swapfile = false -- creates a swapfile
-- vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
-- vim.opt.title = true -- set the title of window to the value of the titlestring
-- vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
-- vim.opt.writebackup = false -- if a file is being edited by another program
-- vim.opt.expandtab = true -- convert tabs to spaces
-- vim.opt.cursorline = true -- highlight the current line
-- vim.opt.number = true -- set numbered lines

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
