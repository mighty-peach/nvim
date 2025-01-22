return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "tsx",
      "elixir",
      "eex",
      "heex",
      "javascript",
      "typescript",
      "lua",
    })

    opts.highlight = {
      enable = true
    }
    opts.auto_install = true
  end,
}
