local ok_mason, mason_lsp_config = pcall(require, "mason-lspconfig")
if not ok_mason then
  return
end

local ok_lsp, lsp_config = pcall(require, "lspconfig")
if not ok_lsp then
  return
end

mason_lsp_config.setup({
  ensure_installed = {
    -- Language servers
    "lua_ls",
    "tsserver",
    "pylsp",
    "csharp_ls",
  },
})

-- Lua
lsp_config.lua_ls.setup({})

-- JS/TS
lsp_config.tsserver.setup({})

-- Python
lsp_config.pylsp.setup({})

-- C#
lsp_config.csharp_ls.setup({})
