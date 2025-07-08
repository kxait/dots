return {
  -- themes
  { 'rose-pine/neovim',                 name = 'rose-pine', config = function() vim.cmd.colorscheme("rose-pine") end },

  -- LSP
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "terraform", "c", "go", "lua", "vim", "javascript", "html", "typescript", "graphql", "yaml" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  "b0o/schemastore.nvim",
  -- formatter
  {
    'stevearc/conform.nvim',
    opts = {},
  },
  { 'nvim-lualine/lualine.nvim' },
  {
    'NMAC427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup({})
    end
  },
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
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
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'akinsho/git-conflict.nvim', version = "*", config = true },

  -- snips
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },

  -- ai
  {
    "supermaven-inc/supermaven-nvim"
  },

  -- must have
  "mbbill/undotree",
  -- git
  "tpope/vim-fugitive",
}
