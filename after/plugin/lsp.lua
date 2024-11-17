local lsp = require("lsp-zero")

local lsp_attach = function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end

lsp.extend_lspconfig({
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  lsp_attach = lsp_attach,
  float_border = 'rounded',
  sign_text = true,
})

require('mason').setup({})
require('mason-lspconfig').setup({
   ensure_installed = {'lua_ls', 'elixirls', 'ts_ls', 'tailwindcss'},
   handlers = {
      lsp.default_setup,
      lua_ls = function()
        local lua_opts = lsp.nvim_lua_ls()
        require('lspconfig').lua_ls.setup(lua_opts)
      end,
      elixirls = function()
        require('lspconfig').elixirls.setup{
          -- Unix
          cmd = { "/opt/homebrew/Cellar/elixir-ls/0.24.1/libexec/language_server.sh" };
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
        }
      end
    }
})

local cmp = require('cmp')
require('luasnip.loaders.from_vscode').lazy_load()
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = cmp.mapping.preset.insert({
    -- confirm completion item
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),

    -- navigate between snippet placeholder
    ['<C-d>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- scroll documentation window
    ['<C-k>'] = cmp.mapping.scroll_docs(-5),
    ['<C-j>'] = cmp.mapping.scroll_docs(5),
    ['<Tab>'] = nil,
    ['<S-Tab>'] = nil
  }),
})

vim.diagnostic.config({
  signs = false
})

lsp.on_attach(function(client, bufnr)
  client.server_capabilities.semanticTokensProvider = nil
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "ga", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
