return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "tsx",
      "elixir",
      "eex",
      "heex",
      "javascript",
      "typescript",
      "lua",
    })

    opts.auto_install = true
  end,
}
