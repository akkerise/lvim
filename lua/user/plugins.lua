return {
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup {
        style = "light", -- Styles: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer'
      }
      require("onedark").load()
    end,
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
      })
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  },
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
}
