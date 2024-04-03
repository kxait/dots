vim.g.mapleader = " "


vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

-- helix compatibility
vim.keymap.set({ "v", "n" }, "gh", "^")
vim.keymap.set({ "v", "n" }, "ge", "G")
vim.keymap.set({ "v", "n" }, "gl", "$")
vim.keymap.set({ "v", "n" }, "<leader>%", "ggVG")
vim.keymap.set({ "v", "n" }, "<A-d>", "\"_d")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])
vim.keymap.set({ "v", "n" }, "ga", "<C-^>")
-- vim.keymap.set("n", "<Esc>", function()
--    vim.lsp.buf.format()
--    vim.cmd.write()
-- end)
vim.keymap.set("n", "<Left>", vim.cmd.bprev)
vim.keymap.set("n", "<Right>", vim.cmd.bnext)

vim.api.nvim_create_user_command("Reload", function() vim.cmd.e() end, {})
vim.api.nvim_create_user_command("ReloadAll", function() vim.cmd("bufdo! e") end, {})

vim.api.nvim_create_user_command("Wbd", function()
   vim.lsp.buf.format()
   vim.cmd.write()
   vim.cmd.bdelete()
end, {})

vim.api.nvim_create_user_command("Bda", function() vim.cmd("bufdo! bd!") end, {})

-- sometimes <C-v> triggers something else in some terminals ;)
vim.keymap.set("n", "<leader>v", "<C-v>")

vim.keymap.set("n", "<leader>*", ":set hlsearch<CR>*")
--vim.keymap.set("n", "<Esc>", ":noh<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_create_user_command("Sch", function(args)
   args = args.args
   local git_files = vim.fn.systemlist('git ls-files')
   vim.cmd([[noautocmd vimgrep /]] ..
      args .. "/gj" .. table.concat(vim.tbl_map(vim.fn.expand, git_files), " "))
   vim.cmd("copen")
end, { nargs = "?" })
