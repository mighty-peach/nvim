return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "float"
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false,
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true
      },
      hijack_netrw_behavior = "open_current"
    },
    buffers = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true
      }
    },
  }
}
