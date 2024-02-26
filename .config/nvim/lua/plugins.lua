return {
  { 'rose-pine/neovim',         name = 'rose-pine', config = function() vim.cmd.colorscheme("rose-pine") end },
  { 'nvim-lualine/lualine.nvim' },
  { 'williamboman/mason.nvim' },
  {
    'stevearc/conform.nvim',
    opts = {},
  },
  { 'm4xshen/autoclose.nvim' },
  { 'NMAC427/guess-indent.nvim' },
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
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
        ensure_installed = { "terraform", "c", "go", "lua", "vim", "javascript", "html", "typescript" },
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
