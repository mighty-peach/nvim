return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ action = "focus", reveal = true })
      end,
      desc = "Explorer NeoTree (reveal current file)",
    },
  },
  opts = {
    window = {
      position = "current"
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
      },
      hijack_netrw_behavior = "open_default"
    },
    buffers = {
      follow_current_file = {
        enabled = true,
      }
    },
  }
}
