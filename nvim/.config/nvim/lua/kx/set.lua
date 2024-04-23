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

vim.g.netrw_winsize = "17"          -- 17% size
vim.g.netrw_banner = "0"            -- hide banner
vim.g.netrw_localmkdir = "mkdir -p" -- change mkdir cmd
vim.g.netrw_localcopycmd = "cp -r"  -- change copy command
vim.g.netrw_localrmdir = "rm -rf"   -- change delete command
vim.g.netrw_list_hide = [['\(^\|\s\s\)\zs\.\S\+']]
