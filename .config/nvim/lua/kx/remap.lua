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

vim.keymap.set("i", "<C-BS>", "<Esc>cvb", {})
vim.keymap.set("n", "<C-cr>", "ciw")

vim.keymap.set("n", "<leader>v", "<C-v>")

vim.keymap.set("n", "<leader>*", ":set hlsearch<CR>*")

-- prime said i need these
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("n", "N", "Nzzzv")
