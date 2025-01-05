return {

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "lua-format" },
        rust = { "rustfmt" },
        elixir = { "mix" },

        javascript = { "prettierd", "prettier", stop_after_first = true },
        javascriptreact = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        typescriptreact = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
}
