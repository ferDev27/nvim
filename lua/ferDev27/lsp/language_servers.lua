local ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
	return
end

-- Html, css, javascript/typescript, json
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local langservers = {
    'html',
    'cssls',
    'tsserver',
    'jsonls',
    'intelephense',
    'clangd'
}

for _, server in ipairs(langservers) do
    lspconfig[server].setup {
      capabilities = capabilities,
    }
end

-- Python
require('lspconfig').pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391', 'W293', 'W291', 'E501'},
        }
      }
    }
  }
}

