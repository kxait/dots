require('nvim-tree').setup({
  -- disable netrw
  disable_netrw = true,
  -- hijack netrw window
  hijack_netrw = true,
  -- update focus on files change
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  -- system open
  system_open = {
    cmd = "open",
    args = { "-R" },
  },
  -- filters
  filters = {
    custom = { ".git" },
    exclude = {},
  }
})
