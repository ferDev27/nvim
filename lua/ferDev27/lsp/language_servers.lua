local ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
	return
end

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local langservers = {
    'html',
    'cssls',
    'tsserver',
    'jsonls',
    'pyright',
}

for _, server in ipairs(langservers) do
    lspconfig[server].setup {
      capabilities = capabilities,
    }
end

require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    }
}
