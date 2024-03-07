-- primeagen said i need this

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50


local g = vim.g

local options_append = {
   -- netrw_keepdir = 0,    --Keep the current directory and the browsing directory synced
   netrw_winsize = "17",          -- 17% size
   netrw_banner = "0",            -- hide banner
   netrw_localmkdir = "mkdir -p", -- change mkdir cmd
   netrw_localcopycmd = "cp -r",  -- change copy command
   netrw_localrmdir = "rm -r",    -- change delete command
   netrw_list_hide = [['\(^\|\s\s\)\zs\.\S\+']],
}

for k, v in pairs(options_append) do
   g[k] = v
end
