return {
  { "folke/tokyonight.nvim",            as = "tokyonight", config = function() vim.cmd("colorscheme tokyonight") end },
  {
    "martinsione/darkplus.nvim",
    as = "darkplus",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme darkplus")
    end
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  {
    'theprimeagen/harpoon',
    config = function()
      local harpoon = require("harpoon");
      harpoon.setup({
        tabline = true
      })
    end
  },
  { 'hrsh7th/nvim-cmp' },
  { 'L3MON4D3/LuaSnip' },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "go", "lua", "vim", "javascript", "html", "typescript" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  "mbbill/undotree",
  "tpope/vim-fugitive"
}
