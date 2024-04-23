local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    rust = { "rustfmt" },
    javascript = { "prettier"  },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 100,
    lsp_fallback = true,
  },
})
