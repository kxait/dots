require('telescope').setup {
   defaults = {
      path_display = { 'truncate' }
   }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>gf', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>s', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>S', function()
   local search = vim.fn.input("Workspace LSP Symbols > ")
   if search == "" then return end
   builtin.lsp_workspace_symbols({ query = search })
end, {})
vim.keymap.set('n', '<leader>D', builtin.diagnostics, {})
-- remember to install ripgrep
vim.keymap.set('n', '<leader>/', function()
   local search = vim.fn.input("Grep > ")
   if search == "" then return end
   builtin.grep_string({ search = search })
end, {})

vim.keymap.set({ 'n', 'v' }, '<leader>b', builtin.buffers, {})
