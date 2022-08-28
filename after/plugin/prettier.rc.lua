local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
  cli_options = {
    config_precedence = "prefer-file"
  },
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact"
  }
}
