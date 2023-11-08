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
vim.keymap.set({ "v", "n" }, "ga", "<nop>")
vim.keymap.set("n", "<Esc>", vim.lsp.buf.format)

vim.api.nvim_create_user_command("Format", vim.lsp.buf.format, {})

vim.keymap.set("i", "<C-BS>", "<Esc>cvb", {})
vim.keymap.set("n", "<C-cr>", "ciw")

-- prime said i need these
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
