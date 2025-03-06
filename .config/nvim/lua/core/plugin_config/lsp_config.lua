require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = { 'ts_ls', 'lua_ls' }
})

local lspconfig = require('lspconfig')
lspconfig.ts_ls.setup({})

